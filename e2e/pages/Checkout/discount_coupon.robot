*** Settings ***


*** Variables ***
${Panel}  XPath:/html/body/app-root/app-home/app-nav-bar/nav/ul[1]/li[4]
${Coupon_button}  id:welcome-coupon
${Modal_coupon}   XPath://*[@id="coupon-modal"]/div
${coupon-code}    id:coupon-code
${Close_button_Coupon}    XPath://*[@id="coupon-modal"]/div/span[1]
${Coupon}    XPath://*[@id="coupon-0"]/td[1]


*** Keywords ***
I am in Wappi home page
   Wait Until Element is Visible   ${Panel}   60

I click on the Get coupon button 
   Wait Until Element is Visible   ${Coupon_button}   60 
   click element  ${Coupon_button}
The coupon is generated   
    Wait Until Element is Visible    ${Modal_coupon}   30
    Wait Until Element is Visible    ${coupon-code}    30
    click element   ${Close_button_Coupon} 
    
It is displayed in the Coupons tab
    Wait Until Element is Visible    ${Coupon}   30
    ${GET_COUPON}=   Get Text   XPath://*[@id="coupon-0"]/td[1]
    Set global Variable    ${GET_COUPON}

