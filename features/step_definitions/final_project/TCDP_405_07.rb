Given(/^i access staging moka backoffice$/) do
  visit "https://backoffice-staging.mokapos.com/login"
  fill_in('Email or phone number', :with => 'kyung@mailinator.com')
  fill_in('Password', :with => '123456')
  find('.btn').click
end

Then(/^i should see you don't have any invoice yet$/) do
  page.should have_content ("You don't have any invoices yet")
end
