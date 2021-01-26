Wolox_Technical_Test
Pasos para la ejecución

Instalar Python

https://www.python.org/

Clonar el repositorio "Robotframework" usando

https://github.com/marisleidy/RobotFramework (correcto)

Instalar Robot framework (pip install robotframework)

Instalar robotframework-seleniumlibrary (pip install robotframework-seleniumlibrary)

Windows: Robotframework en Windows, después de instalar con pip, copie el robot .exe y vuelva a realizar elot en la carpeta windowsapps:

Ruta de origen: cd C: \ Users \ usuario \ AppData \ Local \ Packages \ PythonSoftwareFoundation.Python.3.8_qbz5n2kfra8p0 \ LocalCache \ local-packages \ Python38 \ Scripts

Destino: copiar robot.exe "c: \ Users \ usuario \ AppData \ Local \ Microsoft \ WindowsApps" copiar rebot.exe "c: \ Users \ usuario \ AppData \ Local \ Microsoft \ WindowsApps"

El archivo chromedriver.exe también debe agregarse en las variables de entorno agregadas en las variables de entorno la ruta C: \ Archivos de programa \ Google \ Chrome \ Application \ chromedriver.exe

Pasos para la ejecución de la prueba. Abra el proyecto

Abra una terminal y ejecute: robot e2e \ specs \ smoke \ Update_Profile.robot,

Despues Ejecutar robot e2e \ specs \ smoke \ Place_order_coupon.robot Por ultimo ejecutar robot e2e \ specs \ smoke \ Place_order.robot
