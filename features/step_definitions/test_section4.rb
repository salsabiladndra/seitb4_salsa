When(/^i see container with One Point of Sale for Businesses of All Types and Sizes text$/) do
  expect(page).to have_content('One Point of Sale for Businesses of All Types and Sizes')
end

Then(/^i click card coffee shops$/) do
  find('.Section4__business-type__12cb- > li:nth-child(1) > a:nth-child(1) > img:nth-child(1)').click
end

Then(/^i should redirect to coffee_shop page$/) do
  expect(page).to have_content('Moka for Coffee Shops')
end
