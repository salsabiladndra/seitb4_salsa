Then(/^i hit api using curl$/) do

  @cookie = get_me_the_cookie('remember_token')
  outlet = Curl.get("https://service-staging.mokapos.com/account/v1/profile") do |x|
    x.headers['Content-Type'] = 'application/json'
    x.headers['User-Agent'] = 'capybara'
    x.headers['Authorization'] = "#{@cookie[:value]}"
  end

  @outlet = JSON.parse outlet.body
  @outlet_id = @outlet["outlets"][1]["id"]

  binding.pry

  param = {"id":"null", name: "Gratuity test", amount: "10"}
  gratuity = Curl.post("https://service-staging.mokapos.com/inventory/v1/gratuities", param.to_json) do |y|
    y.headers['Content-Type'] = 'application/json'
    y.headers['User-Agent'] = 'capybara'
    y.headers['Authorization'] = "#{@cookie[:value]}"
    y.headers['OUTLET_ID'] ="#{@outlet_id}"
  end

  @get_gratuity = JSON.parse(gratuity.body)
  binding.pry

end
