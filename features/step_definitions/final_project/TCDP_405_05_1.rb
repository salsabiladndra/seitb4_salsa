Then(/^i click off button > yes$/) do
  find("#account-setting > div > div > div > div.row.visible-below-1440px > div:nth-child(2) > div > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___jOGdX.undefined > form > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___3tKYL > div:nth-child(2) > div > div:nth-child(1) > div:nth-child(1) > div.col-md-1.col-xs-1.col-sm-1.col-lg-1 > input").click
  top_loading_bar
  find("body > div:nth-child(25) > div > div.fade.in.modal > div > div > div.modal-footer > div > button.btn.btn-danger.right").click
  page.should have_css("div.row.visible-below-1440px > div:nth-child(2) > div > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___jOGdX.undefined > form > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___3tKYL > div:nth-child(2) > div > div > div > div.col-md-1.col-xs-1.col-sm-1.col-lg-1 > input")
  top_loading_bar
end
