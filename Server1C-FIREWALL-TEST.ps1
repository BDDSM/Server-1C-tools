$fw = New-Object -ComObject hnetcfg.fwpolicy2 

$rule = New-Object -ComObject HNetCfg.FWRule
$rule.Name = "������ 1� (ragent)"
$rule.ApplicationName = "%ProgramFiles%\1cv8\current\bin\ragent.exe"
#$rule.serviceName = "1C:Enterprise 8.3 Server Agent (x86-64)"
$rule.Protocol = 6 #NET_FW_IP_PROTOCOL_TCP
## $rule.LocalPorts = "1540,1541,1560-1591"  # �� �����������, ���� ��������� ������
$rule.Enabled = $true
### $rule.Grouping = "@firewallapi.dll,-23255"
$rule.Profiles = 7 # all
#$rule.Profiles = 6 # Private, Public
#$rule.Profiles = 3 # Domain, Private
$rule.Action = 1 # NET_FW_ACTION_ALLOW
$rule.EdgeTraversal = $false
$fw.Rules.Add($rule)

$rule = New-Object -ComObject HNetCfg.FWRule
$rule.Name = "������ 1� (rmngr)"
$rule.ApplicationName = "%ProgramFiles%\1cv8\current\bin\rmngr.exe"
#$rule.serviceName = "1C:Enterprise 8.3 Server Agent (x86-64)"
$rule.Protocol = 6 #NET_FW_IP_PROTOCOL_TCP
## $rule.LocalPorts = "1540,1541,1560-1591"  # �� �����������, ���� ��������� ������
$rule.Enabled = $true
### $rule.Grouping = "@firewallapi.dll,-23255"
$rule.Profiles = 7 # all
#$rule.Profiles = 6 # Private, Public
#$rule.Profiles = 3 # Domain, Private
$rule.Action = 1 # NET_FW_ACTION_ALLOW
$rule.EdgeTraversal = $false
$fw.Rules.Add($rule)

$rule = New-Object -ComObject HNetCfg.FWRule
$rule.Name = "������ 1� (rphost)"
$rule.ApplicationName = "%ProgramFiles%\1cv8\current\bin\rphost.exe"
#$rule.serviceName = "1C:Enterprise 8.3 Server Agent (x86-64)"
$rule.Protocol = 6 #NET_FW_IP_PROTOCOL_TCP
## $rule.LocalPorts = "1540,1541,1560-1591"  # �� �����������, ���� ��������� ������
$rule.Enabled = $true
### $rule.Grouping = "@firewallapi.dll,-23255"
$rule.Profiles = 7 # all
#$rule.Profiles = 6 # Private, Public
#$rule.Profiles = 3 # Domain, Private
$rule.Action = 1 # NET_FW_ACTION_ALLOW
$rule.EdgeTraversal = $false
$fw.Rules.Add($rule)

$rule = New-Object -ComObject HNetCfg.FWRule
$rule.Name = "������ 1� (service rule)"
#$rule.ApplicationName = "%ProgramFiles%\1cv8\current\bin\ragent.exe"
$rule.serviceName = "1C:Enterprise 8.3 Server Agent (x86-64)"
$rule.Protocol = 6 #NET_FW_IP_PROTOCOL_TCP
## $rule.LocalPorts = "1540,1541,1560-1591"  # �� �����������, ���� ��������� ������
$rule.Enabled = $false
### $rule.Grouping = "@firewallapi.dll,-23255"
$rule.Profiles = 7 # all
#$rule.Profiles = 6 # Private, Public
#$rule.Profiles = 3 # Domain, Private
$rule.Action = 1 # NET_FW_ACTION_ALLOW
$rule.EdgeTraversal = $false
$fw.Rules.Add($rule)

$rule = New-Object -ComObject HNetCfg.FWRule
$rule.Name = "������ 1� (port rule)"
#$rule.ApplicationName = "%ProgramFiles%\1cv8\current\bin\ragent.exe"
#$rule.serviceName = "1C:Enterprise 8.3 Server Agent (x86-64)"
$rule.Protocol = 6 #NET_FW_IP_PROTOCOL_TCP
$rule.LocalPorts = "1540,1541,1560-1591"  # �� �����������, ���� ��������� ������
$rule.Enabled = $false
### $rule.Grouping = "@firewallapi.dll,-23255"
$rule.Profiles = 7 # all
#$rule.Profiles = 6 # Private, Public
#$rule.Profiles = 3 # Domain, Private
$rule.Action = 1 # NET_FW_ACTION_ALLOW
$rule.EdgeTraversal = $false
$fw.Rules.Add($rule)
