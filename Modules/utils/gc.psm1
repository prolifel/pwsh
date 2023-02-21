<#
 .Synopsis
 git commit

 .Description
  git commit using signature

 .Link
  https://github.com/prolifel/pwsh

 .Example
   # tell your pc to git commit
   gc
#>
function gc {
  git commit -s
}

Export-ModuleMember -Function gc