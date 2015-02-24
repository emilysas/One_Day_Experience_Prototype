require 'rails_helper'

context "student not signed in and on the homepage" do
  it "should see a 'Student sign in' link and a 'Student sign up' link" do
    visit('/')
    expect(page).to have_link('Student sign in')
    expect(page).to have_link('Student sign up')
  end

  it "should not see 'Student sign out' link" do
    visit('/')
    expect(page).not_to have_link('Sign out')
  end
end

context "student signed in on the homepage" do

  before do
    visit('/')
    click_link('Student sign up')
    fill_in('Email', with: 'test@example.com')
    fill_in('Password', with: 'testtest')
    fill_in('Password confirmation', with: 'testtest')
    click_button('Sign up')
  end

  it "should see 'Student sign out' link" do
    visit('/')
    expect(page).to have_link('Student sign out')
  end

  it "should not see a 'Student sign in' link and a 'Student sign up' link" do
    visit('/')
    expect(page).not_to have_link('Student sign in')
    expect(page).not_to have_link('Student sign up')
  end
end