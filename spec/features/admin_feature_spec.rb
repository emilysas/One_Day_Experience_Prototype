require 'rails_helper'

feature 'An Administrator' do

  context 'on the website' do

    before do
      admin = create(:admin)
    end

    it 'can sign in' do
      visit '/admins/sign_in'
      fill_in "Email", with: "admin_test@example.com"
      fill_in "Password", with: "password"
      click_button 'Log in'
      expect(current_path).to eq unverified_profiles_path
    end

  end
  
end