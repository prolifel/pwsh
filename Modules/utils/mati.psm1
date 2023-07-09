<#
 .Synopsis
  shutdown your pc / wsl

 .Description
  'mati' means 'die' in indonesian. cut down basic shutdown command in pwsh.

 .Parameter type
  shutdown type like 'r' for restart, or 's' for shutdown. special case for wsl is using 'wsl'

 .Parameter duration
  shutdown duration in second

 .Link
  https://github.com/prolifel/pwsh

 .Example
   # tell your pc to die asap
   mati

 .Example
   # tell your pc to die in 5 seconds
   mati s 5

 .Example
   # tell your pc to restart asap
   mati r

 .Example
   # tell your wsl to die
   mati r
#>
function mati {
  param (
    [parameter(position = 0, mandatory = $false)]
    [string]
    $type,

    [parameter(position = 1, mandatory = $false)]
    [int]
    $duration
  )

  if ($type -eq "wsl") {
    wsl --shutdown
    return
  }

  if ($type -eq "") {
    $type = "-s"
  }
  else {
    $type = "-" + $type
  }
  shutdown $type -t $duration
}

Export-ModuleMember -Function mati