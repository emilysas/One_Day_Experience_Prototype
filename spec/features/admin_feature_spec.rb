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

  context 'when signed in' do
    
    before do 
      Profile.create(name: "Emily", verified: false, job: "Doctor")
    end

    it 'cannot see a sign in button when already signed in' do
      sign_in
      expect(page).not_to have_content('Sign in')
    end
    
    it 'can see a list of unverified Professional profiles' do
      sign_in
      expect(page).to have_content('Emily')
    end

    it 'can verify a profile' do
      sign_in
      click_link 'Verify'
      expect(page).not_to have_content('Emily')
    end

    xit 'can edit a profile' do
    end

    xit 'can delete a profile' do
    end

    it 'can sign out' do
      sign_in
      click_link 'Sign out'
      expect(page).to have_content('Signed out successfully')
    end

  end

  context 'when not signed in' do

    it 'can sign in' do
      sign_in
      expect(current_path).to eq unverified_profiles_path
    end

    it 'cannot see the verifications page' do
      expect{visit unverified_profiles_path}.to raise_error(ActionController::RoutingError)
    end

  end
  
end