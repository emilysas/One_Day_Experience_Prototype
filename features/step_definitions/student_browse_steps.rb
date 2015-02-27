Given(/^I am on the homepage$/) do
  visit('/')
end

Then(/^I can see the name of a professional$/) do
	@profile = create(:profile)
	puts @profile.name
	# sleep(2)
  # page.should have_css(buddy-name, :text => @profile.name)
  expect(page).to have_content(@profile.name)
end