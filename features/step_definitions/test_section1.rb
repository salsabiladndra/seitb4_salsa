Then(/^i should see container with Struggling with managing your business\? text$/) do
  expect(page).to have_content('Struggling with managing your business?')
end

Then(/^i click learn more$/) do
   find('a.Button__btn__XI5E1:nth-child(5)').click
end

Then(/^i should direct to POS page$/) do
  expect(page).to have_content('Explore new POS-sibilities')
end
