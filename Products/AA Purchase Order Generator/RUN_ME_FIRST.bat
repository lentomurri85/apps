"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
/log="""\\NIKOTSY-PC\Amberta LTD - Accounting\Purchase orders\AA Purchase Order Generator\documents\winscp.log""" /ini=nul ^
  /command ^
    "open ftp://support8%%40images.amberta.com:4q8g%%5DLX06q9%%28%%5B%%29nn0A%%23v@92.204.220.27/" ^
    "cd /public_html/reports/reports_for_apps" ^
    "lcd ""\\NIKOTSY-PC\Amberta LTD - Accounting\Purchase orders\AA Purchase Order Generator\reports""" ^
    "option batch abort" ^
    "option failonnomatch on" ^
    "get sales.csv" ^
    "get fba.csv" ^
    "get stock.csv" ^
    "get purchase.csv" ^
    "exit"


set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%