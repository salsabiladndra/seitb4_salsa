Then(/^i choose library > Gratuity$/) do
  visit "https://backoffice-staging.mokapos.com/library/gratuity"
  page.should have_content ('Gratuity')
  top_loading_bar
end

Then(/^i create gratuity with (\d+) with (\d+)$/) do |arg1, arg2|
  param = {name: "Gratuity #{arg1}", amount: "#{arg2}"}
  create_gratuity_single_outlet(param)
  top_loading_bar
  #find("div.row > div > div:nth-child(2) > div > input").set('Gratuity '+arg1)
  #find("div.row > div > div:nth-child(3) > div > div > input").set(arg2)
end


Then(/^i should see item with Gratuity (\d+)$/) do |arg1|
  top_loading_bar
  expect(page).to have_css("div > div > table > tbody", text: "Gratuity #{arg1}")
end


Then(/^i choose gratuity with (\d+)$/) do |arg1|
  find("div > div > table > tbody > tr > td:nth-child(1)", :text => "Gratuity #{arg1}").click
  top_loading_bar
end

Then(/^i click trash icon$/) do
  find(" div.app-pages-Library-Gratuity-GratuityDetail-GratuityForm-__GratuityForm___1iZpb > span.pull-left > button").click
  top_loading_bar
end

Then(/^i click delete on pop up menu gratuity$/) do
  find("body > div:nth-child(24) > div > div.fade.in.modal > div > div > div.modal-footer > button.btn.btn-danger").click
end

Then(/^i should not see gratuity (\d+)$/) do |arg1|
  expect(page).to have_no_content("Gratuity #{arg1}")
  top_loading_bar
end
