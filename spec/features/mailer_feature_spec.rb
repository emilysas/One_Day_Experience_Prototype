require 'rails_helper'

feature 'StudentMailer' do

  let(:profile) {create :profile}
  let(:student) {create :student}

  feature "a student can send an email to a professional" do

    before do
      login_as(student, :scope => :student)
    end

    scenario "message is displayed to confirm email sent" do
      visit profile_path(profile)
      click_link 'Register Interest'
      expect(page).to have_content('Your email has been sent')
      expect(current_path).to eq profile_path(profile)
      logout(:student)
    end
  end

  context "when a student is not logged in" do

    scenario "they should not be able to send an email" do
      visit profile_path(profile)
      expect(page).not_to have_content('Register Interest')
      expect(page).to have_content('Please sign in to contact Emily')
    end

  end

  context "when a professional is logged in" do
    let(:professional) {create(:professional, email: "prof@example.com")}
      
    before do
      login_as(professional, :scope => :professional)
    end

    it "should not be able to send an email" do
      visit profile_path(profile)
      expect(page).not_to have_content('Register Interest')
      expect(page).to have_content('Please sign in to contact Emily')
      logout(:professional)
    end

  end
  
end