#logoff-remoteuser.ps1
[CmdletBinding()]
param(
[Parameter(Mandatory=$True)]
[string]$computername = $env:computername,
[Parameter(Mandatory=$True)]
[string]$username,
[switch]$force
)



$sessionId = ((quser /server:$computername | Where-Object { $_ -match $username }) -split ' +')[2]
write-output $computername
write-output $username
write-output $sessionId

if ($force) {
$answer = $true
} else {
[string]$answer = read-host "Do you wish to continue the remote logoff process? (y/n)"
}

if ($answer -eq "y") {
logoff $sessionId /server:$computername
}
