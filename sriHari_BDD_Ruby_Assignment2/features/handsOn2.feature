Feature: Automate open cart
  Scenario: Registraion and add to cart
    Given I launch the open cart application
    Then I click on my account and click on login
    And Enter details to login an account
    And Search apple in search box and enter
    And Select monitors in category dropdown and check search is sub categories
    And Tap on Phones & PDA's
    And Select Price (High > Low) in sort option
    Then Add the first three products to compare
    And Click on product compare and select the first product
    And Check the fifth feature in the description section and write into flat file
    And The product to cart and click the shopping cart link in ribbion message

    #Below flow is not possible due to the product shows out of stock while clicking checkout
    #And Click on checkout button and Click on Continue buttons (2nd, 3rd and 4th)
    #And Check the Terms and Conditions Checkbox and click Continue
    #And Click Confirm Order
    #And Click on browser Back button
    #And Click on "Order history " from "My account "tab
    #And Click on "Subscribe to news letters".
    #And Click on Extras and Specials in the footer
    #And Click on List (or) Grid whichever is enabled
    #And Click on Logout