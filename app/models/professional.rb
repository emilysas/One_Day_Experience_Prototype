# The Professional class is responsible for creating a user that can create a professional profile for the site
class Professional < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
end
