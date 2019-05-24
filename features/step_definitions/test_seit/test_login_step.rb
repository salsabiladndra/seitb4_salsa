Given("i navigate into backoffice") do
  visit "https://backoffice-staging.mokapos.com"
end

Then(/^i fill "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  fill_in(arg1, :with => "test@mokapos.com")
  fill_in(arg2, :with => "123456")
end

When(/^i click button "([^"]*)"$/) do |arg1|
  click_button(arg1)
end

When("i should see Dashboard Page") do
  expect(page).to have_content("Dashboard")
end
