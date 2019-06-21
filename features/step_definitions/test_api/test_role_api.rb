Then(/^i choose Employees > Employee Access$/) do
 visit "https://backoffice-staging.mokapos.com/employees/role"
 page.should have_content('Employee Access')
end

#create role with permission
Then(/^i hit api using curl to create employee role$/) do
 @cookie = get_me_the_cookie ('remember_token')
 @randomize = Time.now.to_i
 param = {name:"Staff #{@randomize}","permissions":[39,40,41,42,43,44,45,46,47,48,49,56,60,57,58,59,1,14,15,16]}
 role = Curl.post("https://service-staging.mokapos.com/account/v1/roles", param.to_json) do |cek2|
   cek2.headers['Content-Type'] = 'application/json'
   cek2.headers['User-Agent'] = 'capybara'
   cek2.headers['Authorization'] = "#{@cookie[:value]}"
 end

 @create_role = JSON.parse(role.body)
 binding.pry

end

Then(/^i go to employee slots$/) do
 visit "https://backoffice-staging.mokapos.com/employees/staff"
 page.should have_content('Employee Slots')
end


#get role_id, used to assign employe to role id what we've already made
Then(/^i hit api  using curl to create employee slot$/) do
 @cookie = get_me_the_cookie ('remember_token')
 role = Curl.get("https://service-staging.mokapos.com/account/v1/roles") do |cek4|
   cek4.headers['Content-Type'] = 'application/json'
   cek4.headers['User-Agent'] = 'capybara'
   cek4.headers['Authorization'] = "#{@cookie[:value]}"
 end

 @role_employee = JSON.parse role.body
 binding.pry
 @role_id = @role_employee["roles"][2]["id"]
 binding.pry


#get slot where slot has free slot by doing whilw do
 slot = Curl.get("https://service-staging.mokapos.com/account/v1/slots?active=true&keyword=&includeMe=false") do |employee|
   employee.headers['Content-Type'] = 'application/json'
   employee.headers['User-Agent'] = 'capybara'
   employee.headers['Authorization'] = "#{@cookie[:value]}"
 end

 @slot = JSON.parse slot.body
 binding.pry

  begin
    @i = 0
    @check = @x == 8
    while @check != true do #selama check tidak bernilai true maka lakukan
     @i+=1 # i+1
     @x=@slot[@i].length
     @check = @x == 8
    end
  end

 @slot_id = @slot[@i]["id"]
 binding.pry
 @staff_name = "#{@randomize}"

#post employee with role_id and slot_id
 param = {email:"#{@randomize}@mail.com",first_name:"Staff",last_name:"#{@staff_name}",phone:"8#{@randomize}","role_id":"#{@role_id}",description:"","photo_url":"","outlets":["29883"],"slot_id":"#{@slot_id}","auth_code":""}
 employee = Curl.post("https://service-staging.mokapos.com/account/v1/employees", param.to_json) do |cek3|
   cek3.headers['Content-Type'] = 'application/json'
   cek3.headers['User-Agent'] = 'capybara'
   cek3.headers['Authorization'] = "#{@cookie[:value]}"
   #cek3.headers['OUTLET_ID'] = "#{@role_id}"
 end

 @create_employee = JSON.parse(employee.body)
 binding.pry
end

Then(/^i should see staff that successfully created$/) do
  visit "https://backoffice-staging.mokapos.com/employees/staff"
  page.should have_content("Staff #{@staff_name}")
  top_loading_bar
end
