class Profile < ActiveRecord::Base
  belongs_to :professional
  belongs_to :profession
end
