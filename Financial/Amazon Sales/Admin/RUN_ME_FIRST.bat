"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
  /log="C:\Users\Amberta Support8\Desktop\12 - IT Files\LOGS\winscp.log" /ini=nul ^
  /command ^
    "open ftp://support8%%40amberta.com:4q8g%%5DLX06q9%%28%%5B%%29nn0A%%23v@ftp.amberta.com/" ^
    "cd /public_html/reports/reports_for_apps/accounting" ^
    "lcd ""\\NIKOTSY-PC\Amberta LTD - Accounting\Amazon Sales\reports""" ^
    "put -delete -latest last_sales*.csv" ^
    "get -latest last_sales*.csv" ^
    "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%