@echo off
:: run.bat 0f02400e82964d6c mtbf 1.5R 1.5R_campaign.cam "2020-03-13 14:58"
:: DeviceList to run, should be seprated by , like device1,device2
set DeviceList=%1
:: test_type in mtbf or stress
set test_type=%2
:: device type, like S311R
set ue_type=%3
:: 测试case列表，如S311R_campaign.cam
set test_campaign_name=%4
:: Test end time, should be in the following format
:: 2020-03-13 11:50，可以第四个参数为空，只跑一遍
set test_end_time=%5

set PYTHONPATH=.
echo %DeviceList% %test_type% %ue_type% %test_campaign_name% %test_end_time%
python script\main.py