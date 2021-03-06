Param(
 [parameter()][alias("p")] $PortPrefix = "15"
)

Write-Host $PortPrefix

$RegPath = "Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services"
$ServiceName = "1C:Enterprise 8.3 Server Agent (x86-64)"

If (Test-Path -Path "$RegPath\$ServiceName") {
  Set-Location "$RegPath\$ServiceName"
  #(Get-ItemProperty . -Name Description).Value|fl
  $Description = (Get-ItemProperty . -Name Description).Description
  Set-ItemProperty . -Name Description -Value $Description.Replace('8.3 ','8.3 ' + $PortPrefix + '40 ')
  $DisplayName = (Get-ItemProperty . -Name DisplayName).DisplayName
  Set-ItemProperty . -Name DisplayName -Value $DisplayName.Replace('8.3 ','8.3 ' + $PortPrefix + '40 ')
  (Get-ItemProperty . -Name Description).Description|fl
  (Get-ItemProperty . -Name DisplayName).DisplayName|fl
  Set-Location ".."
  $NewServiceName = $ServiceName.Replace('Agent ', 'Agent ' + $PortPrefix + '40 ')
  Rename-Item "$RegPath\$ServiceName" -Newname "$NewServiceName"
  (Get-Item "$RegPath\$NewServiceName").Name|fl
}
  
