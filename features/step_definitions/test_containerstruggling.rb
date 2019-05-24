Then(/^i should see container with Struggling with managing your business\? text$/) do
  expect(page).to have_content('Struggling with managing your business?')
end

Then(/^i click learn more$/) do
   find('a.Button__btn__XI5E1:nth-child(5)').click
end

Then(/^i should direct to "([^"]*)"$/) do |arg1|
  expect(page.current_url).to eq(arg1)
end
