require 'rails_helper'

feature 'Profiles' do
  
  context 'a professional can create a profile' do
    it "should redirect to the new profile page after sign up" do
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

    it "should allow a professional to create a profile" do
      professional = create(:professional)
      login_as(professional, :scope => :professional)     
      visit new_profile_path
      fill_in "Name", with: "Emily"
      select("Software Engineer",  from: "profile_profession_id")
      fill_in "Company", with: "Makers Academy"
      fill_in "Work address", with: "Commercial Street, London"
      fill_in "Please provide details of your academic background", with: 'BA Philosophy'
      fill_in "Are there any required qualifications for your role?", with: 'No'
      fill_in "What skills are required in this role?", with: 'Problem solving ability'
      fill_in "What motivates you to offer a one day experience?", with: 'To share my love of my work'
      fill_in "What do you think makes you suitable as a mentor for young people looking for a one day experience?", with: 'Good at explaining things clearly'
      fill_in "What can a young person expect from one day in your role", with: 'To have a go at coding something'
      fill_in "Please offer a summary of the one day experience on offer", with: "You'll have a go at pair programming, and if possible attend a client meeting"
      fill_in "Please provide a paragraph or two describing, more fully, the one day experience on offer", with: "You'll learn all about how to approach learning programming languages, test driven development, and the agile approach"
      click_button 'Create Profile'
      expect(Profile.last.profession).to eq "Makers Academy"
      logout(:professional)
    end

    context 'a professional must fill in the necessary fields to create a profile' do

      before do
        professional = create(:professional)
        login_as(professional, :scope => :professional)     
        visit new_profile_path
      end

      xit "should not allow a professional to create a profile unless the 'name' field is filled in" do
        select "Software Engineer", from: "Profession"
        fill_in "Company", with: "Makers Academy"
        fill_in "Work address", with: "Commercial Street, London"
        fill_in "Please provide details of your academic background", with: 'BA Philosophy'
        fill_in "Are there any required qualifications for your role?", with: 'No'
        fill_in "What skills are required in this role?", with: 'Problem solving ability'
        fill_in "What motivates you to offer a one day experience?", with: 'To share my love of my work'
        fill_in "What do you think makes you suitable as a mentor for young people looking for a one day experience?", with: 'Good at explaining things clearly'
        fill_in "What can a young person expect from one day in your role", with: 'To have a go at coding something'
        fill_in "Please offer a summary of the one day experience on offer", with: "You'll have a go at pair programming, and if possible attend a client meeting"
        fill_in "Please provide a paragraph or two describing, more fully, the one day experience on offer", with: "You'll learn all about how to approach learning programming languages, test driven development, and the agile approach"
        click_button 'Create Profile'
        expect(page).to have_content(error)
        expect(Profile.last.profession).not_to eq "Makers Academy"
      end

      xit "should not allow a professional to create a profile unless the 'profession' field is filled in" do    
        fill_in "Name", with: "Emily"
        fill_in "Company", with: "Makers Academy"
        fill_in "Work address", with: "Commercial Street, London"
        fill_in "Please provide details of your academic background", with: 'BA Philosophy'
        fill_in "Are there any required qualifications for your role?", with: 'No'
        fill_in "What skills are required in this role?", with: 'Problem solving ability'
        fill_in "What motivates you to offer a one day experience?", with: 'To share my love of my work'
        fill_in "What do you think makes you suitable as a mentor for young people looking for a one day experience?", with: 'Good at explaining things clearly'
        fill_in "What can a young person expect from one day in your role", with: 'To have a go at coding something'
        fill_in "Please offer a summary of the one day experience on offer", with: "You'll have a go at pair programming, and if possible attend a client meeting"
        fill_in "Please provide a paragraph or two describing, more fully, the one day experience on offer", with: "You'll learn all about how to approach learning programming languages, test driven development, and the agile approach"
        click_button 'Create Profile'
        expect(page).to have_content(error)
        expect(Profile.last.profession).not_to eq "Makers Academy"
      end
    end
  end

end