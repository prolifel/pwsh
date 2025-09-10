<#
 .Synopsis
 wtf <port>

 .Description
  killing the port successfully.

  prerequisites:
  - installing gawk (scoop install main/gawk)

 .Link
  https://github.com/prolifel/pwsh

 .Example
   # opem wtf <port>
   e
#>
function wtf {
  param (
    [parameter(position = 0, mandatory = $true)]
    [int]
    $port
  )

  # netstat -ano | findstr :$port
  # $pids = netstat -ano | findstr :$port | awk '{print $5}'
  $pids = Get-NetTCPConnection -State Listen | findstr $port | awk '{print $6}'
  $pids = $pids.Split("\n")
  $pids = $pids | Select-Object -Unique

  foreach ($p in $pids) {
    echo "killing port $port pid $p"
    kill $p
  }
}

Export-ModuleMember -Function wtf