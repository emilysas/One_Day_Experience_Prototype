# The Sector Model is responsible for containing various professional sectors
class Sector < ActiveRecord::Base
  has_many :profiles
end
