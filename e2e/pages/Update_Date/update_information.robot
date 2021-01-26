*** Settings ***


*** Variables ***
${Panel}  XPath:/html/body/app-root/app-home/app-nav-bar/nav/ul[1]/li[4]
${User_Name}  id:name
${Last_Name}  id:lastName
${Fecha}   id:bornDate
${Sex}   XPath://*[@id="F"]
${UploadFiletest}   css=[type='file']
${AddFile}    C:/FICHA_LA_NAVIDAD.jpeg 
${Save_Button}   id:save-profile

*** Keywords ***
I am in Wappi home page
   Wait Until Element is Visible   ${Panel}   60

I press the "Informacion Personal"
  click element  ${Panel} 

I fill the "Nombre" field with "Marisleidy"
  Wait Until Element is Visible   ${User_Name}   60
  Input text  ${User_Name}  Marisleidy 

I fill the "Apellido" field with "Mora"
   Input text  ${Last_Name}  Mora

I fill the "Fecha de nacimiento" field with "29/11/1985"  
   Input text  ${Fecha}  29/11/1985

I fill the "Pais" field with "Colombia"
   SeleniumLibrary.Select From List By Label  country   Colombia

I select the "Sexo" field with "Femenino"
  Wait Until Element is Visible  F
  click element  ${Sex} 

And I upload the photo
   Wait Until Page Contains Element   ${UploadFiletest}   60s
   Scroll Element Into View     ${UploadFiletest}
   Choose File   ${UploadFiletest}   ${AddFile}

Then I press the "Guardar" button
    click element    ${Save_Button} 

