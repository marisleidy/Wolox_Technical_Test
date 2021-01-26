***Settings***
Library  Selenium2Library

Resource        ../../pages/Update_Date/authentication.robot
Resource        ../../pages/Checkout/order.robot

***Test Cases***

Order without coupon
    Given I am Login to the Wappi page 
    Then I place an order
    Then Orders are displayed in the my orders window

*** Keywords ***
I am Login to the Wappi page
    Given I am in Wappi page
    When I fill the "Usuario" field with "Tester"
    And I fill the "Contraseña" field with "Prueba123*"
    Then I press the "Ingresar" button

I place an order
    Given I am in principal page
    when I press the Order button
    Then I confirm the order

Orders are displayed in the my orders window
    Given I am in the my orders tab
    Then the orders placed are displayed
