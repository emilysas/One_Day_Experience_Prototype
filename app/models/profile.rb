require 'elasticsearch/model'

class Profile < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  belongs_to :professional
  belongs_to :profession

  validates_presence_of :name, message: "Please provide your name"
  validates_presence_of :profession_id, message: "Please select your profession"

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :name, analyzer: 'english'
      indexes :full_description, analyzer: 'english'
      indexes :info, analyzer: 'english'
      indexes :company, analyzer: 'english'
      indexes :req_quals, analyzer: 'english'
      indexes :req_skills, analyzer: 'english'
      indexes :work_address, analyzer: 'english'
    end
  end

  # for retrievieng the image absolute url
  def image_url
      image.url(:medium)
  end

  # for getting job name
  def profession_name
    profession.role.downcase.delete(" ")
  end

  def self.search(query)
    __elasticsearch__.search(
      {
        query: {
          multi_match: {
            query: query,
            fields: ['name', 'full_description', 'info', 'company', 'req_quals', 'req_skills', 'work_address']
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
