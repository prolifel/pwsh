<#
 .Synopsis
 ping google -t

 .Description
  ping google -t

 .Link
  https://github.com/prolifel/pwsh

 .Example
   # tell your pc to ping google -t
   ga
#>
function pg {
  ping google.com -t
}

Export-ModuleMember -Function pg