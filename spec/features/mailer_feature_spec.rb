require 'rails_helper'
require './app/models/professional.rb'
require './app/models/profile.rb'

describe 'StudentMailer' do 
  
  context "a student can send an email to a professional" do

    before do
      profile = create(:profile)
      student = create(:student)
      login_as(student, :scope => :student)
    end

    it "should be able to access an email form on a profile page" do
      visit('/profiles/1')
      click_link 'Register Interest'
      expect(page).to have_content('Your email has been sent')
      expect(current_path).to eq('/profiles/1')
    end

  end
  
end