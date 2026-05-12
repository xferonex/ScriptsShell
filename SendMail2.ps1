$credenciales = Import-Clixml "C:\Users\F.Arroyo\Documents\Secure\MailAppPW.xml" #Asignamos los credenciales cifrados a la variable

$parametrosMail=@{
    From = 'xxxxxxx@gmail.com'
    To = 'xxxxxxx@xxxxx.es'
    Subject = 'Definir el asunto del correo'
    Body = 'Se ha enviado el mail a traves de la tarea programada'
    Credential = $credenciales  
    DeliveryNotificationOption = 'onSuccess'
    Encoding = 'UTF8'
    Port = '587'
    SmtpServer = 'smtp.gmail.com'
    UseSSL = $true
    
    
}

Send-MailMessage @parametrosMail