setlocal

set folder=madx-static-%PLATFORM%
set archive=madx-static-%PLATFORM%.7z
set url=http://coldfix.de/files/%archive%

powershell -Command ^
    "(New-Object Net.WebClient).DownloadFile($env:url, $env:archive)"

7z x %archive%
move %folder% %1

endlocal
