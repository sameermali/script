echo off      :: turn off echoing
echo %time%   :: displays time
:: execute below two commands in parallel and wait for its completion
(
start "title1" cmd /k "cd /path1 & mvn clean install & exit"
start "title2" cmd /k "cd /path2 & mvn clean install & exit"
) | set /P "="

::start cmd.exe /k "more-batch-commands-here"
::/k Carries out the command specified by string but remains

::start cmd.exe /c "more-batch-commands-here"
::/c Carries out the command specified by string and then terminates
