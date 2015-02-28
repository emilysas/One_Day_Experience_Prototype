class Profile < ActiveRecord::Base
  belongs_to :professional
  belongs_to :profession

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  # for retrievieng the image absolute url
  def image_url
      image.url(:medium)
  end

  def profession_name
    profession.role.downcase.delete(" ")
  end

end
