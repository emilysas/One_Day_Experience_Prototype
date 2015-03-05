require 'elasticsearch/model'
# The Profile class is responsible for creating professional profiles that detail the information of each professional
class Profile < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  belongs_to :professional
  belongs_to :sector
  has_many :visits, dependent: :destroy

  validates_presence_of :name, message: "- Please provide your name"
  validates_presence_of :job, message: "- Please select your profession"

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  geocoded_by :address
  after_validation :geocode

  # Fields for the search
  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :name, analyzer: 'english'
      indexes :full_description, analyzer: 'english'
      indexes :info, analyzer: 'english'
      indexes :company, analyzer: 'english'
      indexes :req_quals, analyzer: 'english'
      indexes :req_skills, analyzer: 'english'
      indexes :address, analyzer: 'english'
      indexes :job, analyzer: 'english'
    end
  end

  # for retrievieng the image absolute url
  def image_url
      image.url(:medium)
  end

  # Actual search method -  using fields above
  def self.search(query)
    __elasticsearch__.search(
      {
        query: {
          multi_match: {
            query: query,
            fields: ['name', 'full_description', 'info', 'company', 'req_quals', 'req_skills', 'address', 'job']
          }
        }
      }
      )
  end

end

#  Deleting prev profile indexes (for elastic)
Profile.__elasticsearch__.client.indices.delete index: Profile.index_name rescue nil

# recreate profile indexes
Profile.__elasticsearch__.client.indices.create index: Profile.index_name, body: { settings: Profile.settings.to_hash, mappings: Profile.mappings.to_hash }

# for auto-sync model with elastic search
Profile.import
