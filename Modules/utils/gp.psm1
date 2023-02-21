<#
 .Synopsis
 git push

 .Description
  git push current branch. for another branch, check help

 .Parameter branch
  choose your branch, if empty, it will push in the current branch

 .Link
  https://github.com/prolifel/pwsh

 .Example
   # tell your pc to git push in current branch
   gc

 .Example
   # tell your pc to git push in another branch
   gc feature/xxx
#>
function gp {
  git push origin $(git branch --show-current)
}

Export-ModuleMember -Function gp