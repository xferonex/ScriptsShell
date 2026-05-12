
$accion = New-ScheduledTaskAction `
    -Execute "powershell.exe" `
    -Argument "-ExecutionPolicy Bypass -File 'C:\xxxxx\xxxxx\xxxxxx\xxxx\SendMail.ps1'"

# Ejecución diaria a las 8:00
$disparadorDiario = New-ScheduledTaskTrigger -Daily -At 08:00


# Errores del sistema (EventID 1000)
$Errores = @"
<QueryList>
  <Query Id="0" Path="System">
    *[System[(EventID=1000)]]
  </Query>
</QueryList>
"@

$disparadorSistema = New-Object -TypeName Microsoft.Management.Infrastructure.CimInstance `
    -ArgumentList "MSFT_TaskEventTrigger", @{Subscription=$Errores; Enabled=$true}


# Ccambios en configuración de red (EventID 10000)
$Red = @"
<QueryList>
  <Query Id="0" Path="Microsoft-Windows-NetworkProfile/Operational">
    *[System[(EventID=10000)]]
  </Query>
</QueryList>
"@

$disparadorRed = New-Object -TypeName Microsoft.Management.Infrastructure.CimInstance `
    -ArgumentList "MSFT_TaskEventTrigger", @{Subscription=$Red; Enabled=$true}


# Registrar la tarea con todos los triggers
Register-ScheduledTask `
    -TaskName "EnviarCorreoEventos" `
    -Action $accion `
    -Trigger $disparadorDiario, $disparadorSistema, $disparadorRed `
    -RunLevel Highest `
    -User "SYSTEM"