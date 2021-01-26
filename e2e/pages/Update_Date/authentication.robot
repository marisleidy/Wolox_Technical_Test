*** Settings ***


*** Variables ***
${Name}  id:username
${Password}  id:password
${button}  id:button-login


*** Keywords ***
I am in Wappi page
     Open Browser    https://automation-wappi.vercel.app/login     chrome

When I fill the "Usuario" field with "Tester"
    Input text  ${Name}  Tester
    
I fill the "Contraseña" field with "Prueba123*"
    Input text  ${Password}  Prueba123

Then I press the "Ingresar" button 
    click element  ${button} 


