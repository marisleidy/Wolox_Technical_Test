***Settings***
Library  Selenium2Library

Resource        ../../pages/Update_Date/authentication.robot
Resource        ../../pages/Checkout/discount_coupon.robot
Resource        ../../pages/Checkout/order_Coupon.robot


***Test Cases***
Order with Coupon
    Given I am Login to the Wappi page
    When I get the discount coupon
    And I place the order with the coupon
    And I place the second order with the coupon
    Then I check the order in the My Orders tab

*** Keywords ***
I am Login to the Wappi page
    Given I am in Wappi page
    When I fill the "Usuario" field with "Tester"
    And I fill the "Contraseña" field with "Prueba123*"
    Then I press the "Ingresar" button
    
I get the discount coupon
    Given I am in Wappi home page
    When I click on the Get coupon button
    Then The coupon is generated
    And It is displayed in the Coupons tab

I place the order with the coupon
    Given I am in home page
    when I press the Order button of a product
    And I enter the discount coupon
    And I click on the Order button.
    Then I confirm the order summary
    
I place the second order with the coupon
    Given Select another product
    When Click on the order button of the second product
    And Enter the coupon again
    And Press the order button
    Then Confirm the order

I check the order in the My Orders tab
    Given I am in the my orders tab
    Then I check the order in the My Orders tab


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 