require 'watir'

Watir.default_timeout = 180

Selenium::WebDriver::Chrome::Service.driver_path='C:\Users\SRI\RubymineProjects\sriHari_BDD_Ruby_Assignment1\features\support\chromedriver.exe'

$driver=Watir::Browser.new :chrome