Given(/^I launch the open cart application$/) do
  $driver.goto("https://demo.opencart.com")
  $driver.window.maximize
end

Then(/^I click on my account and click on login$/) do
  $driver.link(:xpath=>"//a[@title='My Account']").click()
  $driver.link(:xpath=>"//a[contains(text(),'Login')]").click()
end

And(/^Enter details to login an account$/) do
  $driver.text_field(:xpath=>"//input[@name='email']").set("sri@bunny.com")
  $driver.text_field(:xpath=>"//input[@name='password']").set("Bunny1202")
  $driver.button(:xpath=>"//input[@type='submit']").click()
end

And(/^Search apple in search box and enter$/) do
  $driver.text_field(:xpath=>"//input[@name='search']").set("apple")
  $driver.text_field(:xpath=>"//input[@name='search']").send_keys :enter
end

And(/^Select monitors in category dropdown and check search is sub categories$/) do
  locator='category_id'
  $driver.select(:name=>locator).select('28')
  $driver.checkbox(:xpath=>"//input[@name='sub_category']").check()
end

And(/^Tap on Phones & PDA's$/) do
  $driver.link(:xpath=>"//a[contains(text(),'Phones')]").click()
end

And(/^Select Price \(High > Low\) in sort option$/) do
  $driver.select(:class=>'form-control').select('Price (High > Low)')
end

Then(/^Add the first three products to compare$/) do
  $driver.button(:xpath=>"(//button[contains(@onclick,'compare.add')])[1]").click()
  $driver.button(:xpath=>"(//button[contains(@onclick,'compare.add')])[2]").click()
  $driver.button(:xpath=>"(//button[contains(@onclick,'compare.add')])[3]").click()
end

And(/^Click on product compare and select the first product$/) do
  $driver.link(:xpath=>"//a[contains(text(),'Product Compare')]").click()
  $driver.link(:xpath=>"(//td[contains(text(),'Product')]/..//td/a)[1]").click()
end

And(/^Check the fifth feature in the description section and write into flat file$/) do
  File.open("description.txt", "w")
  description=$driver.element(:xpath=>"(//div[@id='tab-description']//ul//li)[5]").text()
  File.write("description.txt",description)
end

And(/^The product to cart and click the shopping cart link in ribbion message$/) do
  $driver.button(:xpath=>"//button[@id='button-cart']").click()
  sleep(5)
  $driver.link(:xpath=>"//a[contains(text(),'shopping cart')]").click()
end