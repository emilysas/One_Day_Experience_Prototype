require 'rails_helper'

context "a user not signed in and on the homepage" do

  it "should see a 'Sign in' link" do
    visit('/')
    expect(page).to have_link('Sign in')
  end

  it "should not see 'Sign out' link" do
    visit('/')
    expect(page).not_to have_link('Sign out')
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

