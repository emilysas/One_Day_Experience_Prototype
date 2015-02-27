require 'rails_helper'
require './app/models/professional.rb'
require './app/models/profile.rb'

describe 'StudentMailer' do 
  
  context "a student can send an email to a professional" do

    before do
      Professional.create(email: "professional@test.com", password: 123412234, password_confirmation: 12341234)
      Profile.create(professional_id: 1, name: "Joe Bloggs")
    end

    it "should be able to access an email form on a profile page" do
      visit('/profiles/1')
      click_button 'Email'
      expect(page).to have_content('Dear Joe')
      expect(current_path).to be('/profiles/1')
    end

  end
  
end