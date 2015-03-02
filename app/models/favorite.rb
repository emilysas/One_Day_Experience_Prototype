class Favorite < ActiveRecord::Base
  belongs_to :student
  belongs_to :favorited, polymorphic: true
end
