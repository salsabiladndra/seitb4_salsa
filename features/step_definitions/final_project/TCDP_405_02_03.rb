Given(/^i access moka dev backoffice$/) do
  login_dev
end

Then(/^i choose settings  > Billing$/) do
  visit "https://backoffice-dev.mokapos.com/settings/billing"
end

Then(/^i click cancel subscription$/) do
  find("#account-setting > div > div > div > div.row.visible-below-1440px > div:nth-child(1) > div:nth-child(4) > div:nth-child(4) > div > div:nth-child(2) > div > p > button").click
  #page.should have_content("")
end

Then(/^i click cancel on pop up message > back main menu$/) do
  sleep 3
  find("body > div:nth-child(25) > div > div.fade.in.modal > div > div > div.modal-footer > div > button.btn.btn-default.pull-left").click
end

Then(/^i click cancel again and proceed by API$/) do
    refresh_current_page
    find("#account-setting > div > div > div > div.row.visible-below-1440px > div:nth-child(1) > div:nth-child(4) > div:nth-child(4) > div > div:nth-child(2) > div > p > button").click
    find("body > div:nth-child(25) > div > div.fade.in.modal > div > div > div.modal-footer > div > button.btn.btn-danger").click
    top_loading_bar

    @cookie = get_me_the_cookie ('remember_token')
    status = Curl.post("https://dev-old.mokapos.com/api/v1/feature/get_subscription_status") do |cek|
      cek.headers['Content-Type'] = 'application/json'
      cek.headers['User-Agent'] = 'capybara'
      cek.headers['Cookie'] = "remember_token=#{@cookie[:value]}"
    end

    @status_sub = JSON.parse status.body
    @status_tm = @status_sub[4]["is_subscribing"]


    if @status_tm != true
      open_new_window
      move_to_last_tab
      visit "https://internal-dev.mokapos.com/#/"
      fill_in('loginUsername', :with => 'admin')
      fill_in('loginPassword', :with => '1234567')
      click_button('Sign In')
      find("#mk-collapse-burger > ul:nth-child(1) > li:nth-child(2) > a").click
      find("body > div.container > div > div > form.form-inline > div:nth-child(7) > select").select("all")
      fill_in('search', :with => 'moka50outlet@mailinator.com')
      find("#userScroll > table > tbody > tr", :text => "moka50outlet@mailinator.com").click
      find("#outlet-tab-section > div:nth-child(4) > div:nth-child(2) > div:nth-child(4) #outlet- > table  > tbody > tr:nth-child(2) > td:nth-child(4)").click
      #find("#outlet-tab-section > div:nth-child(4) > div:nth-child(2) > div:nth-child(2) #outlet- > table  > tbody > tr:nth-child(2) > td:nth-child(4)").click
      click_button('Update')
      sleep 3
      page.driver.browser.close
      move_to_first_tab
      refresh_current_page
    else
      visit "https://backoffice-dev.mokapos.com/settings/billing"
    end
  end
