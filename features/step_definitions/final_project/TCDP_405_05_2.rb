Then(/^i click on button$/) do
  find("#account-setting > div > div > div > div.row.visible-below-1440px > div:nth-child(2) > div > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___jOGdX.undefined > form > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___3tKYL > div:nth-child(2) > div > div:nth-child(1) > div:nth-child(1) > div.col-md-1.col-xs-1.col-sm-1.col-lg-1 > input").click
  top_loading_bar

  @cookie = get_me_the_cookie ('remember_token')
  param = {"id":31013,"isActive":true}
  off = Curl.put("https://staging-old.mokapos.com/api/v1/outlet/update_active_subcription", param.to_json) do |cek|
    cek.headers['Content-Type'] = 'application/json'
    cek.headers['User-Agent'] = 'capybara'
    cek.headers['Authorization'] = "#{@cookie[:value]}"
  end

  page.should have_css("div.row.visible-below-1440px > div:nth-child(2) > div > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___jOGdX.undefined > form > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___3tKYL > div:nth-child(2) > div > div > div > div.col-md-1.col-xs-1.col-sm-1.col-lg-1 > input")
end
