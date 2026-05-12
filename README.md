# ScriptsShell

Repositorio profesional de utilidades PowerShell para la gestión de tareas programadas, importación/exportación de XML y envío de correo electrónico.

## Contenido

- `CifradoCredencialesXML.ps1` - Cifra y almacena credenciales de forma segura en XML.
- `ExportarTaskToXml.ps1` - Exporta tareas programadas de Windows a un archivo XML.
- `ImportarTaskXML.ps1` - Importa tareas programadas desde un archivo XML.
- `SendMail.ps1` - Envía correos electrónicos utilizando SMTP desde PowerShell.
- `SendMail2.ps1` - Variante de envío de correo con opciones adicionales.
- `TareaProgramada.ps1` - Crea o configura tareas programadas en Windows.

## Requisitos

- Windows PowerShell 5.1 o superior.
- Permisos de administrador para crear y gestionar tareas programadas.
- Acceso a un servidor SMTP válido para los scripts de correo.

## Uso

1. Abra PowerShell con permisos adecuados.
2. Navegue al directorio del repositorio:
   ```powershell
   cd C:\Users\FernandoArroyo\Documents\F.Arroyo\GitHub\ScriptsShell
   ```
3. Ejecute el script deseado. Por ejemplo:
   ```powershell
   .\SendMail.ps1
   ```

## Buenas prácticas

- Mantenga las credenciales cifradas y no las almacene en texto plano.
- Verifique las políticas de ejecución de PowerShell antes de ejecutar scripts:
  ```powershell
  Get-ExecutionPolicy
  ```
- Use `Set-ExecutionPolicy RemoteSigned` o `Bypass` solo si entiende los riesgos.

## Licencia

Este repositorio no incluye licencia especificada. Añada una licencia adecuada si desea compartirlo públicamente.
