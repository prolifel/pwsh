<#
 .Synopsis
 git fetch origin

 .Description
  git fetch the origin

 .Link
  https://github.com/prolifel/pwsh

 .Example
   # tell your pc to git fetch the origin
   gf

#>
function gf {
  git fetch origin
}

Export-ModuleMember -Function gf