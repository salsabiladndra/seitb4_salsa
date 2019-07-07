Then(/^i go to billing history$/) do
  expect(page).to have_content('BILLING HISTORY')
end

Then(/^i download invoice$/) do
  find("#account-setting > div > div > div > div:nth-child(3) > div > div > div > div.row.app-pages-AccountSetting-Billing-BillingHistory-__BillingHistory___3zeTE > div > table > tbody > tr:nth-child(1) > td:nth-child(6) > input").click
end
