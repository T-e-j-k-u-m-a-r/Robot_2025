@echo off
set ROBOT_ROOT=%cd%
set TEST_DIR=%ROBOT_ROOT%\Tests\Automation
set RESULTS_DIR=%ROBOT_ROOT%\Results

pabot --processes 2 --outputdir %RESULTS_DIR% %TEST_DIR%\*.robot