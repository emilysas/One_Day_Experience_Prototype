# The Student class is responsible for creating users who will be the consumers of the site
class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :favorites
  has_many :favorite_profiles, through: :favorites, source: :favorited, source_type: 'Profile'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |student|
      student.email = auth.info.email
      student.password = Devise.friendly_token[0,20]
      # student.name = auth.info.name
    end
  end

  def self.new_with_session(params, session)
    super.tap do |student|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        student.email = data["email"] if student.email.blank?
      end
    end
  end

end
