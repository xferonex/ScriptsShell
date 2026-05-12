$credenciales = Import-Clixml "C:\xxxxx\xxxxx\xxxxxx\xxxx\MailAppPW.xml" #Asignamos los credenciales cifrados a la variable

$parametrosMail=@{
    From = 'xxxxxxx@gmail.com'
    To = 'xxxxxxx@xxxxx.es'
    Subject = 'Definir el asunto del correo'
    Body = 'Este es un mensaje de prueba enviado desde PowerShell sin introducir los credenciales, en el que se demuestra el correcto funcionamiento del script'
    Credential = $credenciales  
    DeliveryNotificationOption = 'onSuccess'
    Encoding = 'UTF8'
    Port = '587'
    SmtpServer = 'smtp.gmail.com'
    UseSSL = $true
    
    
}

Send-MailMessage @parametrosMail