*** Settings ***


*** Variables ***
${home}  XPath:/html/body/app-root/app-coupons/app-nav-bar/nav/ul[1]/li[1]/a
${Offers_button}   XPath://*[@id="offer-0"]/td[7]/button
${class_coupon}   XPath://*[@id="coupon-0"]/td[1]
${Input_coupon}    id:coupon
${Close_button_Coupon}    XPath://*[@id="coupon-modal"]/div/span[1]
${Close_button_orders}    id:order-confirm
${Modal_confirmation_orders}    //*[@id="confirmation-modal"]/div
${Modal_confirmation_button}    //*[@id="confirmation-modal"]/div/span
${My_orders}    XPath:/html/body/app-root/app-home/app-nav-bar/nav/ul[1]/li[3]/a
${order_second_button}    XPath://*[@id="offer-1"]/td[7]/button
${order_view}    XPath:/html/body/app-root/app-orders/div/div/h1
${order_Text}    Pedidos
*** Keywords ***
I am in home page
   Wait Until Element is Visible   ${home}   60
   click element  ${home} 

I press the Order button of a product
    Wait Until Element is Visible    ${Offers_button}   60
    click element    ${Offers_button}
I enter the discount coupon
    Wait Until Element is Visible    ${Input_coupon}   60
    Input text   ${Input_coupon}    ${GET_COUPON}
    Set global Variable  ${Input_coupon}
I click on the Order button.
    Wait Until Element is Visible    ${Close_button_orders}   60
    click element   ${Close_button_orders} 
    Set global Variable   ${Close_button_orders}
I confirm the order summary
    Wait Until Element is Visible    ${Modal_confirmation_orders}    30
    Set global Variable    ${Modal_confirmation_orders}
    click element   ${Modal_confirmation_button}
    Set global Variable    ${Modal_confirmation_button}
Select another product
    Wait Until Element is Visible    ${order_second_button}    30

click on the order button of the second product    
    click element   ${order_second_button}
Enter the coupon again
    Wait Until Element is Visible    ${Input_coupon}   60
    Input text   ${Input_coupon}    ${GET_COUPON}
Press the order button
    click element   ${Close_button_orders}
Confirm the order
    Wait Until Element is Visible    ${Modal_confirmation_orders}    30
    click element   ${Modal_confirmation_button}
I am in the my orders tab
    Wait Until Element is Visible    ${My_orders}   30
    click element   ${My_orders}
    
I check the order in the My Orders tab
    Wait Until Element is Visible   ${order_view}   30
    Wait Until Page Contains  ${order_Text}