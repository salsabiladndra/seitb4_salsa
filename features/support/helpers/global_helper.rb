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

end

World(CustomWorld)
