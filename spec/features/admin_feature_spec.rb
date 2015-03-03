require 'rails_helper'

feature 'An Administrator' do
  
  before do
    admin = create(:admin)
  end

  def sign_in
    visit '/admins/sign_in'
    fill_in "Email", with: "admin_test@example.com"
    fill_in "Password", with: "password"
    click_button 'Log in'
  end

  context 'on the website' do

    it 'can sign in' do
      sign_in
      expect(current_path).to eq unverified_profiles_path
    end

    it 'cannot see a sign in button when already signed in' do
      sign_in
      expect(page).not_to have_content('Sign in')
    end

    it 'can sign out' do
      sign_in
      click_link 'Sign out'
      expect(page).to have_content('Signed out successfully')
    end

  end

  context 'when signed in' do
    
    before do 
      Profile.create({name: "Sanda Golcea", verified: false, image: File.open(Rails.root+'public/images/sanda.jpg') , info: "I make amazing websites", full_description: "I use programming languages like Ruby and Javascript to write web applications", work_address: "Silicon Valley" , company: "Google" , job: "Engineer", req_quals: "None, but a Computer Science degree helps", req_skills: "Ability to problem solve, to think abstractly, and to be equally comfortable thinking of the big picture and the finer details", expectations: "If you come and work with us for the day, it may seem a bit scary and intimidating to begin with, but I can promise that you'll learn a lot and feel that you can go away and write your own (albeit simple) code" })
    end

    it 'can see a list of unverified Professional profiles' do
      sign_in
      expect(page).to have_content('Sanda')
    end

    it 'can verify a profile' do
      sign_in
      click_link 'Verify'
      expect(page).not_to have_content('Sanda')
    end

  end
  
end