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

