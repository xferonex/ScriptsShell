#####################################################################################
#
# + Este script será utilizado para obtener la estructura de la tarea programada en un 
# fichero XML. 
# + Dicho fichero será editado a conveniencia añadiendo los triggers deseados.
# + Una vez editado la tarea programda será creada de nuevo a partir del fichero XML.
#
######################################################################################


#Definimos la accion de la tarea programada y la guardamos en una variable
$accion = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-ExecutionPolicy Bypass -File 'C:\xxxxx\xxxxx\xxxxxx\xxxx\SendMail2.ps1'" #Reemplazar la ruta por la ruta donde se encuentre el script que se desea ejecutar con la tarea programada

#Definimos el disparador y lo guardamos en una variable
$disparador = New-ScheduledTaskTrigger -Daily -At 08:00

#Creamos la tarea programda con el disparador inicial.
Register-ScheduledTask -TaskName "EnviarMail" -Action $accion -Trigger $disparador -RunLevel Highest -User "SYSTEM"

#Consultamos la tarea programada y guardamos la consulta en un fichero con estructura XML. 
schtasks /query /tn "EnviarMail" /xml > C:\xxxxx\xxxxx\xxxxxx\xxxx\EnviarMail.xml #Reemplazar la ruta por la ruta donde se quiera guardar el archivo XML con la estructura de la tarea programada

