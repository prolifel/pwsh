<#
 .Synopsis
 git add

 .Description
  git add .

 .Link
  https://github.com/prolifel/pwsh

 .Example
   # tell your pc to git add
   ga
#>
function ga {
  git add .
}

Export-ModuleMember -Function ga