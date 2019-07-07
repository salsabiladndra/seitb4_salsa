Then(/^i should see Invoice Date, Invoice Number, Period, Total Amount, Status, Download Invoice$/) do
  page.has_css?('#account-setting > div > div > div > div:nth-child(3) > div > div > div > div.row.app-pages-AccountSetting-Billing-BillingHistory-__BillingHistory___3zeTE')
  page.should have_content('Invoice Date')
  page.should have_content('Invoice Number')
  page.should have_content('Period')
  page.should have_content('Total Amount')
  page.should have_content('Status')
  page.should have_content('Download Invoice')
end
