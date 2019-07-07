Then(/^i click pay button$/) do
  find("#pay-button").click
end

Then(/^i should direct to midtrans page$/) do
  page.should have_content ('Kartu Kredit')
end

Then(/^i choose atm\/bank transfer > BCA > lihat no rekening$/) do
  find("#payment-list > div:nth-child(2) > a > div.sprite.list-next").click
  find("#bank-transfer-list > div:nth-child(2) > a > div.sprite.list-next").click
  find("#application > div.button-main.show").click
  @norek = find("#application > div.container-fluid > div > div > div > div:nth-child(2) > div.main > div > span.text-main-content").text
end

Then(/^i visit simulator sandbox and input norek$/) do
  simulator
end
