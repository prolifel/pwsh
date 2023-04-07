# https://blog.netwrix.com/2018/07/03/how-to-automate-powershell-scripts-with-task-scheduler/

$path = "E:\wallpaper\"
$script = $env:PSModulePath.split(';')[0] + "\..\scripts\wallpaper.ps1"
$user = "NT AUTHORITY\SYSTEM" # Specify the account to run the script

# set night background
$path += "\light.jpg"
$trigger = New-ScheduledTaskTrigger -At 10:05pm -Once # Specify the trigger settings
$action = New-ScheduledTaskAction -Execute $script -Argument $path # Specify what program to run and with its parameters
Register-ScheduledTask -TaskName "changeWallpaperNight" -Trigger $trigger -User $user -Action $action -RunLevel Highest –Force # Specify the name of the task
