require 'rails_helper'

feature 'Favorites' do
  let(:profile) {create :profile}
  let(:student) {create :student}
  
  context 'a signed in student' do
    before do
      login_as(student, :scope => :student)
      visit profile_path(profile)
      click_link('Add to favorites')
    end

    it 'should be able to favorite a professional' do
      expect(page).to have_content('Remove from favorites')
    end

    it 'should be able to remove a professional from favorites' do
      click_link('Remove from favorites')
      expect(page).to have_content('Add to favorites')
    end
    
    it 'should be able to see all his/her favorites' do
      visit favorites_path
      expect(page).to have_content('Emily')
    end

    it 'should not longer see a person that has been removed from favorites' do
      click_link('Remove from favorites')
      visit favorites_path
      expect(page).not_to have_content('Emily')
    end
    
  end

  context 'without being a signed in' do
   
   it "cannot favorite a profile" do
     expect{visit favorite_profile_path(profile)}.to raise_error( ActionController::RoutingError)
   end

   it "cannot see favorite profiles" do
     expect{visit favorites_path}.to raise_error( ActionController::RoutingError)
   end

 end
end