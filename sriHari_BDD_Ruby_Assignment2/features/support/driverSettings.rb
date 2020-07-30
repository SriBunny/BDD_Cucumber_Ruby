require 'watir'

Watir.default_timeout = 180

Selenium::WebDriver::Chrome::Service.driver_path='C:\Users\SRI\RubymineProjects\sriHari_BDD_Ruby_Assignment2\features\support\chromedriver.exe'
Selenium::WebDriver.logger.level = :error
$driver=Watir::Browser.new :chrome