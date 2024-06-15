<#
 .Synopsis
 git pull origin

 .Description
  git pull origin current branch. for another branch, check help

 .Parameter branch
  choose your branch, if empty, it will pull in the current branch

 .Link
  https://github.com/prolifel/pwsh

 .Example
   # tell your pc to git pull origin in current branch
   gpl

 .Example
   # tell your pc to git pull in another branch
   gpl feature/xxx
#>
function gpl {
  git pull origin $(git branch --show-current)
}

Export-ModuleMember -Function gpl