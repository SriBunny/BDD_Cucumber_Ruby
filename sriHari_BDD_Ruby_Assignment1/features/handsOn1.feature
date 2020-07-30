Feature: Automate open cart
  Scenario: Registraion and add to cart
    Given I launch the open cart application
    Then I click on my account and click on register
    And Enter details to create an account
    And I click on Privacy policy and click on continue
    And I click on contact link
    And Enter Enquiry in the given textbox
    And I click on submit
    Then I click on Samsung galaxy tab advertisement
    And I click in Review tab
    And Enter review comments and provide ratings
    And I click on Continue and verify the success message
    Then I click on Add to whish list and verify the success message
    And I click on Wishlist link in sucess message
    And I click on pound and retrive the price and display in console
    And I click on Euro and retrive the price and display in console
    And I click on US dollor and retrive the price and display in console
    Then I click on Add to cart and verify the success message
    And I click on Remove icon and verify the messag and click on continue
    And I logout the application