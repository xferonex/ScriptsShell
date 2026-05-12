# Creamos objeto que contiene el nombre de ususario y contraseña que queda en un SecureString (cifrada en memoria)
# El objeto queda guardado en la variable $pw
$pw = Get-Credential


#Exportamos el objetoen  un archivo XML cifrado. El cifrado usa DPAPI, que está ligado a la cuenta de Windows.
$pw | Export-Clixml "C:\xxxxx\xxxxx\xxxxxx\xxxx\MailAppPW.xml" #Reemplazar la ruta por la ruta donde se quiera guardar el archivo XML cifrado