Given(/^an exciting destination called "(.*?)"$/) do |name|
  @destination = Destination.create!( :name => name )
end

When(/^I select "(.*?)"$/) do |name|
  click_link name 
end

When(/^I fill in the description of the todo item$/) do
  @title = Faker::Company.catch_phrase
  @description = Faker::Company.bs
  fill_in "Title", :with => @title
  fill_in "Description", :with => @description 
end

When(/^I submit the todo form$/) do

end

Then(/^I should see my new todo item listed as activity under "(.*?)"$/) do |name|
  save_and_open_page
  expect(page.has_content?(@title)).to be true
  expect(page.has_content?(@description)).to be true
end

