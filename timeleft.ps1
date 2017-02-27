function timeleft
{
[CmdletBinding()]
param(
  [Parameter(Mandatory=$true)]
  [String]$last,

  [Parameter(Mandatory=$true)]
  [String]$previous
)

"{0:N2}" -f ((950-$last)/($last-$previous)/60)
}
