Given(/^I am on the destinations index page$/) do
  visit destinations_path
end

When(/^I add a new destination$/) do
  click_link "Add Destination"
end

When(/^complete the form with valid information$/) do
  @country = Faker::Address.country
  fill_in "Name", :with => @country   
  fill_in "Image Url", :with => "http://upload.wikimedia.org/wikipedia/commons/2/26/YellowLabradorLooking_new.jpg"
end

When(/^I submit the form$/) do
  click_on "Create Destination"
end

Then(/^I should see my new destination$/) do
  save_and_open_page
  expect(page.has_content?(@country)).to be true
  expect(page.has_css?('img.destination[src="http://upload.wikimedia.org/wikipedia/commons/2/26/YellowLabradorLooking_new.jpg"]')).to be true
end
