"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
  /log="""LOG""" /ini=nul ^
  /command ^
FTP
    "cd /public_html/reports/reports_for_apps/accounting" ^
    "lcd ""\\NIKOTSY-PC\Amberta LTD - Accounting\Stock Close\reports""" ^
    "get -latest last_sales*.csv" ^
    "get -latest stock_*.csv" ^
    "get -latest fba_stock*.csv" ^
    "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%
