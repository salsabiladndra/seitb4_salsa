
And(/^i click Support Center link$/) do
  find('div.FooterColumn__col__2Wdet:nth-child(3) > ul:nth-child(2) > li:nth-child(3) > a:nth-child(1)').click
end

Then(/^i should redirect to Support Page$/) do
  expect(page.current_url).to eq("https://mokapos.com/en/support")
end
