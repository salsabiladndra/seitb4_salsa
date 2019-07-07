Given(/^i access moka backoffice$/) do
  visit "https://backoffice-staging.mokapos.com/login"
end

When(/^i fill email and password$/) do
  fill_in('Email or phone number', :with => 'rumahcupcake1@mailinator.com')
  fill_in('Password', :with => '123456')
end

When(/^i click sign in$/) do
  find('.btn').click
end

Then(/^i should see dashboard Page$/) do
  expect(page).to have_content('Dashboard')
  top_loading_bar
end

Then(/^i choose library > item Library$/) do
  visit "https://backoffice-staging.mokapos.com/library/list"
  page.should have_content('Item Library')
  top_loading_bar
end

Then(/^i create item with (\d+) with (\d+)$/) do |arg1, arg2|
  click_button "Create Item"
  find(" div.col-lg-9.col-md-9.col-sm-9.no-padding-left.no-padding-right.app-pages-Library-Item-ItemDetail-ItemForm-__ItemForm___3__vk > div:nth-child(1) > div > div > div > input").set('Item '+arg1)
  find("div:nth-child(2) > div > div > div.mk-grouped-input > div:nth-child(1) > div > input").set(arg2)
  #fill_in("name", :with => 'Item ' +arg1)
  #fill_in("item_variants[0].price", :with => arg2)
end

Then (/^i click save$/) do
  find("form > div.app-pages-Library-Item-ItemDetail-ItemForm-__ItemForm___1MYMN.footer-form-item > span > button:nth-child(3)").click
end

Then(/^i should see item with item (\d+)$/) do |arg1|
  top_loading_bar
  expect(page).to have_css(" div > div > table > tbody", text: "Item #{arg1}")
  #expect(page).to have_content("auto #{arg1}")
end


Then(/^i choose item with (\d+)$/) do |arg1|
  #find("#mk-col-left > div.app-pages-Library-Item-List-__List___iVPJm", :text => "Item #{arg1}").click
  find("#mk-col-left > div > div > table >tbody > tr > td:nth-child(1)", :text => "Item #{arg1}").click
end


Then(/^i click trash button$/) do
  find(" div.app-pages-Library-Item-ItemDetail-ItemForm-__ItemForm___1MYMN.footer-form-item > span.pull-left > button").click
  top_loading_bar
end

Then(/^i click delete on pop up$/) do
  find("div.fade.in.modal > div > div > div.modal-footer > div > button.btn.btn-danger").click
  top_loading_bar
end

Then(/^i should not see item (\d+)$/) do |arg1|
  expect(page).to have_no_content("Item #{arg1}")
end
