Then(/^i hit api tax using curl to create tax$/) do
  @cookie = get_me_the_cookie ('remember_token')
  outlet = Curl.get("https://service-staging.mokapos.com/account/v1/profile") do |cek|
    cek.headers['Content-Type'] = 'application/json'
    cek.headers['User-Agent'] = 'capybara'
    cek.headers['Authorization'] = "#{@cookie[:value]}"
  end

  @outlet = JSON.parse outlet.body
  @outlet_id = @outlet["outlets"][1]["id"]
  binding.pry

  param = {"id":"null", name: "tax 1", amount: "5"}
  tax = Curl.post("https://service-staging.mokapos.com/inventory/v1/taxes", param.to_json) do |cek2|
    cek2.headers['Content-Type'] = 'application/json'
    cek2.headers['User-Agent'] = 'capybara'
    cek2.headers['Authorization'] = "#{@cookie[:value]}"
    cek2.headers['OUTLET_ID'] = "#{@outlet_id}"
  end

  @create_tax = JSON.parse(tax.body)
  binding.pry

end
