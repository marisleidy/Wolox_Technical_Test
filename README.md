# Wolox_Technical_Test
Steps for execution

Install Python 

https://www.python.org/

Clone "Robotframework" repository using 

https://github.com/marisleidy/RobotFramework (correct)

Install Robot framework (pip install robotframework)

Install robotframework-seleniumlibrary (pip install robotframework-seleniumlibrary)


Windows: Robotframework on windows, after installing with pip copy the .exe robot and rebot in the windowsapps folder:

Origin route:
cd C:\Users\usuario\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.8_qbz5n2kfra8p0\LocalCache\local-packages\Python38\Scripts

Destination:
copy robot.exe "c:\Users\usuario\AppData\Local\Microsoft\WindowsApps"
copy rebot.exe "c:\Users\usuario\AppData\Local\Microsoft\WindowsApps"


The chromedriver.exe file must also be added in the environment variables added in the environment variables the path C:\Program Files\Google\Chrome\Application\chromedriver.exe

Steps for the test execution.
Abra el proyecto 
 

Abra una terminal y ejecute: robot e2e \ specs \ smoke \ Update_Profile.robot,  
 
Despues Ejecutar          robot e2e\specs\smoke\Place_order_coupon.robot
Por ultimo ejecutar        robot e2e\specs\smoke\Place_order.robot


