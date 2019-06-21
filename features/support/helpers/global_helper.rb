module CustomWorld

  def top_loading_bar
    begin
      loading = page.execute_script 'return $("#wrapper > div:nth-child(1) > div:nth-child(1)").css("width");'
    end while loading == '1260px'
    begin
      loading = page.execute_script 'return $("#wrapper > div:nth-child(1) > div:nth-child(1)").css("width");'
    end while loading != '0px'
  end

  def move_to_last_tab
    tab = page.driver.browser.window_handles
    page.driver.browser.switch_to.window(tab.last)
  end

  def refresh_current_page
    page.evaluate_script 'window.location.reload()'
  end

  def move_to_first_tab
    tab = page.driver.browser.window_handles
    page.driver.browser.switch_to.window(tab.first)
  end

  def close_current_tab
    page.driver.browser.close
  end

  #def get_slot_id
    #@cookie = get_me_the_cookie('remember_token')
    #slot = Curl.get("https://service-staging.mokapos.com/account/v1/slots?active=true&keyword=&includeMe=false") do |employee|
      #employee.headers['Content-Type'] = 'application/json'
      #employee.headers['User-Agent'] = 'capybara'
      #employee.headers['Authorization'] = "#{@cookie[:value]}"
  #end

  #@slot = JSON.parse slot.body
  #@slot_id = @slot[i]["id"]

  #end
end

World(CustomWorld)
