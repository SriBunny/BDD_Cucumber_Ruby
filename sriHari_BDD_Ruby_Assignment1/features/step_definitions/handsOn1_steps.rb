Given(/^I launch the open cart application$/) do
  $driver.goto("https://demo.opencart.com")
  $driver.window.maximize
end

Then(/^I click on my account and click on register$/) do
  $driver.link(:xpath=>"//a[@title='My Account']").click()
  $driver.link(:xpath=>"//a[contains(text(),'Register')]").click()
end

And(/^Enter details to create an account$/) do
  $driver.text_field(:xpath=>"//input[@name='firstname']").set("Sri")
  $driver.text_field(:xpath=>"//input[@name='lastname']").set("Hari")
  strCurrentTime = DateTime.now.strftime('%s')
  email = "sri" + strCurrentTime + "@gmail.com"
  $driver.text_field(:xpath=>"//input[@name='email']").set(email)
  $driver.text_field(:xpath=>"//input[@name='telephone']").set("8056438021")
  $driver.text_field(:xpath=>"//input[@name='password']").set("Qwerty12")
  $driver.text_field(:xpath=>"//input[@name='confirm']").set("Qwerty12")
end

And(/^I click on Privacy policy and click on continue$/) do
  $driver.checkbox(:xpath=>"//input[@name='agree']").check()
  $driver.button(:xpath=>"//input[@type='submit']").click()
end

And(/^I click on contact link$/) do
  $driver.link(:xpath=>"//a[contains(text(),'contact us')]").click()
end

And(/^Enter Enquiry in the given textbox$/) do
  $driver.textarea(:id=>"input-enquiry").set("This is to Change of Address/Phone number")
end

And(/^I click on submit$/) do
  $driver.button(:xpath=>"//input[@type='submit']").click()
  $driver.link(:xpath=>"//a[contains(text(),'Continue')]").click()
end

Then(/^I click on Samsung galaxy tab advertisement$/) do
  $driver.div(:id => 'slideshow0').link(:index => 0).click()
end

And(/^I click in Review tab$/) do
  $driver.link(:xpath=>"//a[contains(text(),'Reviews')]").click()
end

And(/^Enter review comments and provide ratings$/) do
  $driver.textarea(:id=>"input-review").set("This tab")
  $driver.radio(:xpath=>"//input[@value='5']").click()
  $driver.button(:id=>"button-review").click()
  sleep(10)
  if $driver.text.include? "Warning"
    printf("Warning message is displayed.")
  else
    printf("Warning message is not displayes")
  end
  $driver.textarea(:id=>"input-review").set("Samsung Galaxy Tab 10.1, is the world’s thinnest tablet,
  measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor")
end

And(/^I click on Continue and verify the success message$/) do
  $driver.button(:id=>"button-review").click()
  sleep(10)
  if $driver.text.include? "Thank you"
    printf("Thank you for review message is displayed")
  else
    printf("Thank you for review message is not displayed")
  end
end

Then(/^I click on Add to whish list and verify the success message$/) do
  $driver.button(:xpath=>"//button[@data-original-title='Add to Wish List']").click()
  sleep(10)
  if $driver.text.include? "Success"
    printf("Success for adding product to whishlist message is displayed")
  else
    printf("Success for adding product to whishlist message is not displayed")
  end
end

And(/^I click on Wishlist link in sucess message$/) do
  $driver.link(:xpath=>"//a[contains(text(),'wish list')]").click()
  sleep(10)
end

And(/^I click on pound and retrive the price and display in console$/) do
  $driver.form(:id=>"form-currency").click()
  $driver.button(:name=>"GBP").click()
  sleep(5)
  price=$driver.div(:class=>"price").text()
  if price.include?"£"
    printf("Product price is displayed in £ which is "+price)
  else
    printf("Product price is not displayed in £")
  end
end

And(/^I click on Euro and retrive the price and display in console$/) do
  $driver.form(:id=>"form-currency").click()
  $driver.button(:name=>"EUR").click()
  sleep(5)
  price=$driver.div(:class=>"price").text()
  if price.include?"€"
    printf("Product price is displayed in € which is "+price)
  else
    printf("Product price is not displayed in €")
  end
end

And(/^I click on US dollor and retrive the price and display in console$/) do
  $driver.form(:id=>"form-currency").click()
  $driver.button(:name=>"USD").click()
  sleep(5)
  price=$driver.div(:class=>"price").text()
  if price.include?"$"
    printf("Product price is displayed in $ which is "+price)
  else
    printf("Product price is not displayed in $")
  end
end

Then(/^I click on Add to cart and verify the success message$/) do
  $driver.button(:xpath=>"//button[@data-original-title='Add to Cart']").click()
  sleep(5)
  if $driver.text.include? "Success"
    printf("Success for adding product to cart message is displayed")
  else
    printf("Success for adding product t cart message is not displayed")
  end
end

And(/^I click on Remove icon and verify the messag and click on continue$/) do
  $driver.a(:xpath=>"//a[@data-original-title='Remove']").click()
  sleep(5)
  if $driver.text.include? "Success"
    printf("Success: You have modified your wish list! message is displayed")
  else
    printf("Success: You have modified your wish list! message is not displayed")
  end
end

And(/^I logout the application$/) do
  $driver.div(class:'list-group').a(text:'Logout').click()
  $driver.link(:xpath=>"//a[contains(text(),'Continue')]").click()
  printf("Account got logged out.")
end