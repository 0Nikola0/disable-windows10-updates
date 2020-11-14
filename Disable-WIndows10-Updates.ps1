# RUN AS ADMINISTRATOR
## Stop Windows Update
Stop-Service -Name wuauserv     

## Disable auto startup for Windows Update
Set-Service -Name wuauserv -StartupType Disabled
## Use this instead of the first one if it doesn't work
# Set-Itemproperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\wuauserv' -Name 'Start' -value 4

## Optional 
## Stop Windows Update Medic Service
# Stop-Service -Name WaaSMedicSvc
## Disable auto startup for Windows Update Medic Service
## Has to be done from Registry since Services doesn't allow it to be set to Disabled
# Set-Itemproperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc' -Name 'Start' -value 4
