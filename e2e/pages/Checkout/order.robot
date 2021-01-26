*** Settings ***


*** Variables ***
${table}   XPath:/html/body/app-root/app-home/div/div/table
${order_button}    XPath://*[@id="offer-1"]/td[7]/button
${order_confirmation_button}    id:order-confirm
${Input_coupon}    id:coupon
${confirmation_orders}    XPath://*[@id="confirmation-modal"]/div/p
${confirmation_button}    XPath://*[@id="confirmation-modal"]/div/span
${orders}   XPath:/html/body/app-root/app-home/app-nav-bar/nav/ul[1]/li[3]/a

*** Keywords ***
I am in principal page
    Wait Until Element is Visible   ${table}   60

I press the Order button    
    Wait Until Element is Visible   ${order_button}   60
    click element  ${order_button}

I confirm the order
    Wait Until Element is Visible   ${order_confirmation_button}   60
    click element  ${order_confirmation_button}

I am in the my orders tab
    Wait Until Element is Visible    ${confirmation_orders}    30
    click element   ${confirmation_button}
the orders placed are displayed
    Wait Until Element is Visible    ${orders}   30
    click element   ${orders}