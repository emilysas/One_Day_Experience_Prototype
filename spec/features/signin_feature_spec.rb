require 'rails_helper'

feature 'Sign in' do

  context "a user not signed in and on the homepage" do

    it "should see a 'Sign in' link" do
      visit '/'
      expect(page).to have_link('Sign in')
    end

    it "should not see 'Sign out' link" do
      visit('/')
      expect(page).not_to have_link('Sign out')
    end

    it "should see links to sign in or up as a professional or a student" do
      visit('/')
      click_link 'Sign in'
      expect(page).to have_content('Professional Sign in')
      expect(page).to have_content('Sign Up As A Professional')
      expect(page).to have_content('Student Sign in')
      expect(page).to have_content('Sign Up As A Student')
    end

    it "should allow a user to sign up as a student" do
      visit '/'
      click_link 'Sign in'
      click_link 'Sign Up As A Student'
      fill_in "Name", with: "Luke"
      fill_in "Email", with: "student_test@example.com"
      fill_in "Password", with: "12341234"
      fill_in "Password confirmation", with: "12341234"
      click_button 'Sign up'
      expect(Student.last.name).to eq "Luke"
      expect(current_path).to eq('/')
    end

    it "should allow a user to sign in as a student" do
      visit '/'
      student = create(:student)
      login_as(student, :scope => :student)     
      expect(Student.last.name).to eq "Jonny"
      expect(current_path).to eq('/')
      logout(:student)
    end

    it "should allow a user to sign up as a professional" do
      visit '/'
      click_link 'Sign in'
      click_link 'Sign Up As A Professional'
      fill_in "Email", with: "professional_test@example.com"
      fill_in "Password", with: "12341234"
      fill_in "Password confirmation", with: "12341234"
      click_button 'Sign up'
      expect(Professional.last.email).to eq "professional_test@example.com"
      expect(current_path).to eq new_profile_path
    end

    it "should allow a user to sign in as a student" do
      visit '/'
      professional = create(:professional)
      login_as(professional, :scope => :professional)     
      expect(Professional.last.email).to eq "professional@example.com"
      expect(current_path).to eq('/')
      logout(:professional)
    end

  end

  context "a user signed in and on the homepage" do
    
    before do
      student = create(:student)
      login_as(student, :scope => :student)
    end

    it "should see a 'Sign out' link" do
      visit('/')
      expect(page).to have_link('Sign out')
    end

    it "should not see 'Sign in' link" do
      visit('/')
      expect(page).not_to have_link('Sign in')
    end

  end


end

