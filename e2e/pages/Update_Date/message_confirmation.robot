*** Settings ***


*** Variables ***
${Modal}     XPath://*[@id="confirmation-modal"]/div 
${Modal_confirmation_Text}     Tu información se guardó correctamente
${close}   XPath://*[@id="confirmation-modal"]/div/span

*** Keywords ***
Displayed a registration confirmation message
  Wait Until Element is Visible   ${Modal}   30
  Wait Until Page Contains  ${Modal_confirmation_Text}
  
The data is updated  
  click element  ${close}