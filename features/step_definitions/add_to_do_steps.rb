Given(/^an exciting destination called "(.*?)"$/) do |name|
  @destination = Destination.new(name: name)
end

When(/^I select "(.*?)"$/) do |button|
  click_button button
end

When(/^I fill in the description of the todo item$/) do
  @description = ToDoItem.create(:description => Faker::Company.bs)
end

When(/^I submit the todo form$/) do
  click_button("Add To Do Item")
end

Then(/^I should see my new todo item listed as activity under "(.*?)"$/) do |name|
  expect(has_content?(@descripton)).to be true 
  expect(has_content?(@destination)).to be true 
end
