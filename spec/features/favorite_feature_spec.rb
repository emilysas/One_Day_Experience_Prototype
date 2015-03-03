require 'rails_helper'

feature 'Favorites' do
  let(:profile) {create :profile}
  let(:student) {create :student}
  
  context 'a signed in student' do
    before do
      login_as(student, :scope => :student)
    end

    it 'should be able to favorite a professional' do
      visit profile_path(profile)
      click_link('Add to favorites')
      expect(page).to have_content('Remove from favorites')
    end

    xit 'should be able to remove a professional from favorites' do
    end
    xit 'should be able to see all his/her favorites' do
    end
  end

  context 'without being a signed in' do
   
   xit "cannot favorite a profile" do
     expect{visit favorite_profiles_path}.to raise_error( ActionController::RoutingError)
   end

   xit "cannot see favorite profiles" do
     expect{visit favorites_student_path}.to raise_error( ActionController::RoutingError)
   end

 end
end