"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
  /log="""\\NIKOTSY-PC\Amberta LTD - Accounting\Stock Close\documents\winscp.log""" /ini=nul ^
  /command ^
    "open ftp://support8%%40images.amberta.com:4q8g%%5DLX06q9%%28%%5B%%29nn0A%%23v@92.204.220.27/" ^
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