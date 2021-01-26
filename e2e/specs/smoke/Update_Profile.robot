***Settings***
Library  SeleniumLibrary

Resource        ../../pages/Update_Date/authentication.robot
Resource        ../../pages/Update_Date/update_information.robot
Resource        ../../pages/Update_Date/message_confirmation.robot


*** Test Cases ***
Update Profile Information on the Wappi Page
    Given I am Login to the Wappi page
    When Update Profile Information
    Then The user's data are updated
    
*** Keywords ***
I am Login to the Wappi page
    Given I am in Wappi page
    When I fill the "Usuario" field with "Tester"
    And I fill the "Contraseña" field with "Prueba123*"
    Then I press the "Ingresar" button
        
Update Profile Information
    Given I am in Wappi home page
    When I press the "Informacion Personal"
    And I fill the "Nombre" field with "Marisleidy"
    And I fill the "Apellido" field with "Mora"
    And I fill the "Fecha de nacimiento" field with "29/11/1985"
    And I fill the "Pais" field with "Colombia"
    And I select the "Sexo" field with "Femenino"
    And I upload the photo
    Then I press the "Guardar" button
    
The user's data are updated   
     Given Displayed a registration confirmation message
     then The data is updated
  