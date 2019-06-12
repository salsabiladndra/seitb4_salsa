Then(/^i should see container with Got something in mind\? text$/) do
  expect(page).to have_content('Got something in mind?')
end

Then(/^i click button Learn More$/) do
  find('a.Button__btn__XI5E1:nth-child(4)').click
end

Then(/^i should redirect to contact us page$/) do
  expect(page).to have_content('Contact Us')
end
