<#
.SYNOPSIS
  Reset Device ID of a machine
.DESCRIPTION
  This script stops the Edge DX services and deletes the UID file from the cache folder. This will create a new Device ID when the services are restarted.
.PARAMETER <Parameter_Name>
    None
.INPUTS
  None
.OUTPUTS
  None
.NOTES
  Version:        1.0
  Author:         Manuel Winkel - @Deyda84
  Creation Date:  18/11/2022
  Purpose/Change:
 .EXAMPLE
  None
#>

Stop-Service "ControlUp Agent Manager Service"
Stop-Service "ControlUp SIP Agent"
Remove-Item "C:\ProgramData\Avacee\sip_agent\cachefiles\uid*"