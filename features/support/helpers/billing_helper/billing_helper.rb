module BillingHelper

  def login_dev
    visit "https://backoffice-dev.mokapos.com/login"
    fill_in('Email or phone number', :with => 'moka50outlet@mailinator.com')
    fill_in('Password', :with => '123456')
    find('.btn').click
  end

  def simulator
    open_new_window
    move_to_last_tab
    visit "https://simulator.sandbox.midtrans.com/bca/va/index"
    fill_in('inputMerchantId', :with => "#{@norek}")
    find("#wrap > div.container > form > div:nth-child(2) > div > button").click
    find("#wrap > div.container > form > div:nth-child(8) > div > button").click
    page.should have_content ('Payment Success')
    sleep 4
    page.driver.browser.close
    move_to_first_tab  
  end

end
