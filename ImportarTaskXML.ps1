
#Eliminamos la tarea original utilizada para extraer la estructura en XML sin pedir confirmación
schtasks /delete /tn "EnviarMail" /f
#Creamos la tarea importando la estructura del XML ya modificado. Esta tarea será la definitiva
schtasks /create /tn "EnviarMail" /xml  C:\xxxxx\xxxxx\xxxxxx\xxxx\EnviarMail.xml #Reemplazar la ruta por la ruta donde se quiera guardar el archivo XML con la estructura de la tarea programada

