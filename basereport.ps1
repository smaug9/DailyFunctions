$Report = @()

$vmlist = get-vm
foreach ($vm in $vmlist)
{
$ReportEntry = "" | Select Name, NumCPU, MemoryGB, Version, VMHost
    $ReportEntry.Name = $vm.name
    $ReportEntry.NumCPU = $vm.NumCPU
	$ReportEntry.MemoryGB = $vm.memoryGB
	$ReportEntry.Version = $vm.version
	$ReportEntry.VMHost = $vm.vmhost
	
$Report += $ReportEntry
}

$Report | ogv
