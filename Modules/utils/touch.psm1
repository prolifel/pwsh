<#
 .Synopsis
  touch a file

 .Description
  creating a file

 .Parameter filename
  input your filename (mandatory)

 .Link
  https://github.com/prolifel/pwsh

 .Example
   # creating a file with a name hello.txt
   touch hello.txt
#>
function touch {
  param (
    [parameter(position = 0, mandatory = $true)]
    [string]
    $filename
  )

  ni $filename
}

Export-ModuleMember -Function touch