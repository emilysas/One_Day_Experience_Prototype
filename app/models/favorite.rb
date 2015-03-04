# The Favorite class is responsible for allowing students to 'favorite' profiles
class Favorite < ActiveRecord::Base
  belongs_to :student
  belongs_to :favorited, polymorphic: true

  validates :student_id, uniqueness: { 
    scope: [:favorited_id],
    message: 'can only favorite an item once'
  }
end
