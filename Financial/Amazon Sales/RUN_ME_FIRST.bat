"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
**Log**
  /command ^
  **Secret FTP**
    "option batch abort" ^
    "option failonnomatch on" ^
    "cd /public_html/reports/reports_for_apps/accounting" ^
    "lcd ""\\NIKOTSY-PC\Amberta LTD - Accounting\Amazon Sales\reports""" ^
    "get -latest last_sales*.csv" ^
    "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%
