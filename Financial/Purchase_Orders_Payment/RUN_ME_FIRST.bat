"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
LOG
  /command ^
 FTP
    "option batch abort" ^
    "option failonnomatch on" ^
    "cd /public_html/reports/reports_for_apps" ^
    "lcd ""\\NIKOTSY-PC\Amberta LTD - Accounting\Purchase_Orders_Payment\reports""" ^
    "get fba.csv" ^
    "get purchase.csv" ^
    "get stock.csv" ^
    "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%
