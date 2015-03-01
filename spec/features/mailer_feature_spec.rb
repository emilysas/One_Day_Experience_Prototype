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

    it "should be able to send an email on a profile page" do
      visit('/profiles/1')
      click_link 'Register Interest'
      expect(page).to have_content('Your email has been sent')
      expect(current_path).to eq('/profiles/1')
    end
  end

  context "a student has not logged in" do

    before do
      profile = create(:profile)
      student = create(:student)
    end

    it "should not be able to send an email if not logged in as a student" do
      visit('/profiles/1')
      expect(page).not_to have_content('Register Interest')
      expect(page).to have_content('Please sign in to contact Emily')
    end

  end
  
end