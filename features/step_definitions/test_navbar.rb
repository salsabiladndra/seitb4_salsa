Given(/^I go to mokapos homepage$/) do
  visit "http://staging.mokapos.com"
end


When(/^I click link Blog$/) do
  find("div.nav__floatRight__3pl-I.nav__padding7__zElvW > a:nth-child(1)").click
end

Then(/^I should be redirected to Blog page "([^"]*)"$/) do |arg1|
    # expect(page).to have_css("img[src*='https://blog.mokapos.com/hs-fs/hubfs/Moka%20Blog.png?width=2136&name=Moka%20Blog.png']")
    @params = {url:"#{arg1}"}
    expect(page).to have_link(@param)
end


When(/^I click link Bantuan$/) do
  find("div.nav__floatRight__3pl-I.nav__padding7__zElvW > a:nth-child(2)").click
end

Then(/^I should see Pusat Bantuan Moka POS page$/) do
  expect(page).to have_content('Selamat datang di Pusat Bantuan Moka POS')
end

When(/^I click dropdown Point of Sales$/) do
  find("div:nth-child(2) > button").click
end

When(/^I click Rangkuman Fitur$/) do
  find("div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(1)").click
end

When(/^I click Manajemen Meja$/) do
  find("div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(2)").click
end

When(/^I click Manajemen Inventori$/) do
  find("div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(3)").click
end

When(/^I click Manajemen Staff$/) do
  find("div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(4)").click
end

When(/^I click Manajemen Pelanggan$/) do
  find("div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(5)").click
end

Then(/^I should see Moka Point of Sale$/) do
  expect(page).to have_content("Bisnis jadi mudah dengan aplikasi kasir Moka")
end

Then(/^I should see Table Management$/) do
  page.should have_content('Solusi untuk memproses pesanan lebih cepat')
end

Then(/^I should see Track Your Ingredient Inventory$/) do
  page.should have_content('Track Your Ingredient Inventory')
end

Then(/^I should see Know Your Customers$/) do
  page.should have_content('Know Your Customers')
end

Given(/^I click link Payment$/) do
  find("div.nav__navbar__QBr8L.nav__blue__5sG-W.nav__top32__3vmhV.nav__showNavbar__1RiFj.nav__transparent__1QMOL > div > div:nth-child(3) > a").click
end

Then(/^I should see Moka Payments$/) do
  page.should have_content('Kemudahan menerima pembayaran yang aman')
end

Given(/^I click link Capital$/) do
  find("div.nav__navbar__QBr8L.nav__blue__5sG-W.nav__top32__3vmhV.nav__showNavbar__1RiFj.nav__transparent__1QMOL > div > div:nth-child(4) > a").click
end

Then(/^I should see Moka Capital$/) do
  page.should have_content('Pendanaan untuk meningkatkan laju bisnis')
end

When(/^I click dropdown Lainnya$/) do
  find("div:nth-child(5) > button").click
end

When(/^I click link Kedai Kopi$/) do
  find("div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(2)").click
end

Then(/^I should see Moka untuk Bisnis Kedai Kopi$/) do
    page.should have_content('Moka untuk Bisnis Kedai Kopi')
end

When(/^I click link Restoran$/) do
  find("div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(3)").click
end

Then(/^I should see Moka untuk Bisnis Restoran$/) do
  page.should have_content('Moka untuk Bisnis Restoran')
end

When(/^I click link Restoran Cepat Saji$/) do
  find("div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(4)").click
end

Then(/^I should see Moka untuk Bisnis Restoran Cepat Saji$/) do
  page.should have_content('Moka untuk Bisnis Restoran Cepat Saji')
end

When(/^I click link Toko Roti$/) do
  find("div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(5)").click
end

Then(/^I should see Moka untuk Bisnis Toko Roti$/) do
  page.should have_content('')
end

When(/^I click link Retail$/) do
  find("div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(6)").click
end

Then(/^I should see Moka untuk Bisnis Retail$/) do
  page.should have_content('Moka untuk Bisnis Ritel')
end

When(/^I click link Minimarket$/) do
  find("div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(7)").click
end

Then(/^I should see Moka untuk Bisnis Minimarket$/) do
  move_to_last_tab
  page.should have_content('Topic: Salon')
  close_current_tab
end

When(/^I click link Barbershop & Salon$/) do
  find("div.others__submenu__XKTG- > div:nth-child(2) > a:nth-child(2)").click
end

Then(/^I should see Moka untuk Bisnis Barbershop & Salon$/) do
  page.should have_content('')
end

When(/^I click link Layanan Kecantikan$/) do
  find("div.others__submenu__XKTG- > div:nth-child(2) > a:nth-child(3)").click
end

Then(/^I should see Moka untuk Bisnis Layanan Kecantikan$/) do
  page.should have_content('')
end

When(/^I click link Layanan Profesional$/) do
  find("div.others__submenu__XKTG- > div:nth-child(2) > a:nth-child(4)").click
end

Then(/^I should see Moka untuk Bisnis Layanan Profesional$/) do
  page.should have_content('')
end

When(/^I click link Harga$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Harga Moka POS$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click link Hubungi Kami$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Contact Us$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click link Support Center$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Butuh Bantuan\?$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click link Video Tutorials$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Moka POS \- Aplikasi Kasir Point of Sale$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click link Knowledge Center$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Selamat datang di Pusat Bantuan Moka POS$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click link Panduan Penggunaan$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click link Developers$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Let's grow together by building on Moka Open Platform$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click link Getting Started$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Start building with Moka in (\d+) easy steps\.$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click link API Reference$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see MOKA API page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click link Developer Terms$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Developer Terms of Service$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click link Informasi Moka$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Tentang Moka POS$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click link Berita$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see MOKABlog$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click link Karir$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Job Openings at Moka$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I click link Login$/) do
  find("a.nav__floatRight__3pl-I.nav__active__13Ucz").click
end

Then(/^I should see Sign In page$/) do
  page.should have_content('Sign In')
end

When(/^I click link Coba Gratis$/) do
  find("#mpNavRegister").click
end
