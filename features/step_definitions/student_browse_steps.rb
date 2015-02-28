Given(/^I am on the homepage$/) do
	@profile = create(:profile)
	create(:profile, :name => "Luke", :profession => "Doctor")
	create(:profile, :name => "Johnny", :profession => "Doctor")
  visit('/')
end

Then(/^I can see the name of a professional$/) do
	@profile = create(:profile)
	create(:profile, :name => "Luke", :profession => "Doctor")
	create(:profile, :name => "Johnny", :profession => "Doctor")
	# sleep(2)
  # page.should have_css(buddy-name, :text => @profile.name)
  expect(page).to have_content(@profile.name)
end