Then(/^i choose account settings  > Billing$/) do
  visit "https://backoffice-staging.mokapos.com/settings/billing"
  page.should have_content('Billing')
  top_loading_bar
end

Then(/^i should see current plan, active outlet and feature subscription$/) do
  @cookie = get_me_the_cookie ('remember_token')

  #currentplan
  current = Curl.get("https://service-staging.mokapos.com/account/v1/profile") do |cek|
    cek.headers['Content-Type'] = 'application/json'
    cek.headers['User-Agent'] = 'capybara'
    cek.headers['Authorization'] = "#{@cookie[:value]}"
  end
  @last_payment = JSON.parse current.body
  @current_plan = @last_payment["business"]["current_plan"]
  #@date = @last_payment["business"]["last_payment_date"]
  #page.should have_content("Moka #{@current_plan} Months")
  find("div.row.visible-below-1440px > div:nth-child(1) > div.app-pages-AccountSetting-Billing-CurrentPlan-__CurrentPlan___2Uflp > div.app-pages-AccountSetting-Billing-CurrentPlan-__CurrentPlan___20uRr > div.app-pages-AccountSetting-Billing-CurrentPlan-__CurrentPlan___23soO > strong", text: "Moka #{@current_plan} Months")

  #activeoutlet
  outlet = Curl.get("https://staging-old.mokapos.com/api/v1/outlets") do |cek2|
    cek2.headers['Content-Type'] = 'application/json'
    cek2.headers['User-Agent'] = 'capybara'
    cek2.headers['Cookie'] = "remember_token=#{@cookie[:value]}"
  end
  @active_outlet = JSON.parse outlet.body
  @outlet_1 = @active_outlet[0]["end_date"].split("T")[0].split('-')
  @get_day = @outlet_1[2]
  @get_month = @outlet_1[1]
  @get_year = @outlet_1[0]
  @a = "#{@get_day} #{@get_month} #{@get_year}"
  @month = Date::MONTHNAMES[@get_month.to_i]
  @a1 = "#{@get_day} #{@month} #{@get_year}"
  #page.should have_content("#{@a1}")
  find("div.col-xs-12.col-md-5 > div:nth-child(3) > div > div:nth-child(2) > strong", text: "#{@a1}")

  #feature subscription
  status = Curl.post("https://staging-old.mokapos.com/api/v1/feature/get_subscription_status") do |cek3|
    cek3.headers['Content-Type'] = 'application/json'
    cek3.headers['User-Agent'] = 'capybara'
    cek3.headers['Cookie'] = "remember_token=#{@cookie[:value]}"
  end
  @status_sub = JSON.parse status.body
  @status_sub2 = @status_sub[4]["name"]
  #page.should have_content("#{@status_sub2}")
  find("div.row.visible-below-1440px > div:nth-child(1) > div:nth-child(4) > div.app-pages-AccountSetting-Billing-FeatureSubscriptions-__FeatureSubscriptions___2D2QR > div > div:nth-child(1)", text: "#{@status_sub2}")
end
