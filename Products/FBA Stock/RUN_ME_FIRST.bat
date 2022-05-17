"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
LOG  /command ^
    "open ftp://FTP ADDRESS" ^
    "cd /public_html/reports/reports_for_apps" ^
    "lcd ""\\NIKOTSY-PC\Amberta LTD - Working Files\12 - IT Files\FBA\FBA Stock\reports""" ^
    "get stock.csv" ^
    "get fba.csv" ^
    "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%
