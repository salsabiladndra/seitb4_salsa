Then(/^i choose library > Taxes$/) do
  visit "https://backoffice-staging.mokapos.com/library/taxes"
  page.should have_content('Taxes')
  top_loading_bar
end

Then(/^i create tax with (\d+) with (\d+)$/) do |arg1, arg2|
  param = {name: "Tax #{arg1}", amount: "#{arg2}"}
  create_tax_single_outlet(param)
  top_loading_bar
  #click_button "Create Tax"
  #find(" div.row > div > div.col-sm-6.col-md-6.no-padding > div > input").set('Tax '+arg1)
  #find(" div.row > div > div:nth-child(2) > div > div > input").set(arg2)
  #fill_in("name", :with => 'Tax ' +arg1)
  #fill_in("amount", :with => arg2)
end


Then (/^i should see item with tax (\d+)$/) do |arg1|
  top_loading_bar
  expect(page).to have_css(" div > div > table > tbody", text: "Tax #{arg1}")
end


Then(/^i choose tax with (\d+)$/) do |arg1|
  find("div > div > table > tbody > tr > td:nth-child(1)", :text => "Tax #{arg1}").click
  top_loading_bar
end

Then(/^i click trash button icon$/) do
  find("#mk-col-right > div > form > div.app-pages-Library-Tax-TaxDetail-__style___1FnBw > span.pull-left > button").click
  top_loading_bar
end

Then(/^i click delete on pop up menu$/) do
  top_loading_bar
  find("body > div:nth-child(24) > div > div.fade.in.modal > div > div > div.modal-footer > div > button.btn.btn-danger").click
end

Then(/^i should not see tax (\d+)$/) do |arg1|
  expect(page).to have_no_content("Tax #{arg1}")
  top_loading_bar
end
