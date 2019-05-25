Then(/^i should see container with Offer your customers a new choice of payment text$/) do
  expect(page).to have_content('Offer your customers a new choice of payment')
end

Then(/^i click Guide me how$/) do
  find('.SectionInfo__reverse__3qI8X > div:nth-child(2) > a:nth-child(6)').click
end

Then(/^i should redirect to payments page$/) do
  expect(page).to have_content('Accept multiple payments securely in one app')
end
