require 'rails_helper'

feature 'Profiles' do
  
  context 'a professional can create a profile' do
    it "should allow a professional to create a profile on sign up" do
      visit '/'
      click_link 'Sign in'
      click_link 'Sign Up As A Professional'
      fill_in "Email", with: "professional_test@example.com"
      fill_in "Password", with: "12341234"
      fill_in "Password confirmation", with: "12341234"
      click_button 'Sign up'
      expect(page).to have_content("What do you think makes you suitable as a mentor for young people looking for a one day experience?
")
      expect(current_path).to eq new_profile_path
    end
  end

end