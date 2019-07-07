Then(/^i should see container with Head over heels to get your business growing\? text$/) do
  expect(page).to have_content('Head over heels to get your business growing?')
end

Then(/^i click button Guide me how$/) do
  find('#__next > div:nth-child(1) > section:nth-child(5) > div:nth-child(1) > div:nth-child(2) > a:nth-child(6)').click
end

Then(/^i should redirect to capitals  page$/) do
  expect(page).to have_content('Get a loan from Moka Capital to grow your business')
end
