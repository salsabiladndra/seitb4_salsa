Given(/^i access to moka homepage$/) do
  visit "https://mokapos.com/en"
end

Then(/^i should see container with Grow your business with Moka now text$/) do
  expect(page).to have_content('Grow your business with Moka now')
end

Then(/^i click Claim Your Free Trial Now button$/) do
  click_link('mpIndexRegister2')
end

Then(/^i should redirect to Register page$/) do
  expect(page.current_url).to eq("https://backoffice.mokapos.com/register")
end
