class Visit < ActiveRecord::Base
  belongs_to :student
  belongs_to :profile
end
