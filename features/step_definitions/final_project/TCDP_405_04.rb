Then(/^i should see billing cycle, price subscription, and total amount$/) do
  page.should have_content('Billing Cycle')

  @cookie = get_me_the_cookie ('remember_token')
  price = Curl.post("https://staging-old.mokapos.com/api/v1/feature/get_feature_price_per_months") do |cek|
    cek.headers['Content-Type'] = 'application/json'
    cek.headers['User-Agent'] = 'capybara'
    cek.headers['Cookie'] = "remember_token=#{@cookie[:value]}"
  end

  @get_price = JSON.parse price.body
  @price_tm = @get_price["Table Management"]
  @disc = @price_tm*17/100
  @total = @price_tm-@disc
  @tm = @total*12


  outlet = Curl.get("https://staging-old.mokapos.com/api/v1/billings/rules") do |cek2|
    cek2.headers['Content-Type'] = 'application/json'
    cek2.headers['User-Agent'] = 'capybara'
    cek2.headers['Cookie'] = "remember_token=#{@cookie[:value]}"
  end

  @get_price_outlet = JSON.parse outlet.body
  @price = @get_price_outlet["moka_price"]
  @disc2 = @price*17/100
  @total2 = @price-@disc2
  @outlet = @total2*12


  @total_all = @tm+@outlet
  binding.pry
  @total_parse = ActiveSupport::NumberHelper.number_to_delimited(@total_all, :delimiter => ".")


  #page.should have_content("Rp. #{@total_parse}")
  find("div.row.visible-below-1440px > div:nth-child(2) > div > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___jOGdX.undefined > form > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___3tKYL > div:nth-child(3) > div:nth-child(1) > div.text-primary.row > div.col-md-5.col-xs-6 > h4", text: "Rp. #{@total_parse}")


  @exp_notif = find("#account-setting > div > div > div > div.row.visible-below-1440px > div:nth-child(2) > div > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___jOGdX.undefined > form > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___3tKYL > div:nth-child(3) > div:nth-child(1) > div.row.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___1Xpi- > div.col-md-7.col-xs-6 > div:nth-child(2)").text
  find(" div.row.visible-below-1440px > div:nth-child(2) > div > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___jOGdX.undefined > form > div.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___3tKYL > div:nth-child(3) > div:nth-child(1) > div.row.app-pages-AccountSetting-Billing-BillingReceipt-BillingReceiptForm-__style___1Xpi- > div.col-md-7.col-xs-6 > div:nth-child(2) > strong > em", text: "#{@exp_notif}")

end
