@echo off
if "%1" == "h" goto begin 
:begin 
set /a zq_info=1
cls
@TITLE caiji_new_v1
@ECHO                           ��������������������������                  
@ECHO ����������������������������    �벻Ҫ�رձ�����! ����������������������������
@ECHO ��   ������������������   ��������������������������   ������������������   ��
@ECHO ��   ������������������       ÿ5-10����ץȡһ��         ������������������   ��
@ECHO ������������������������������������������������������������������������������
@ECHO.
@ECHO.
echo ץȡ��1��
ruby run_craw.rb
:zhuaqu
set /a zq_info =%zq_info%+1
set /a sleep_time = %random%%%600+300
ping -n %sleep_time% 127.1>nul
echo ץȡ��%zq_info%��
ruby run_craw.rb
REM echo %sleep_time%
goto zhuaqu