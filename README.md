# Robot_2025
Robot_2025


#Execution comands: 
ROBOT commands for executing scripts from bank folder

How to run all the robot files: 

		robot -d Results Tests/automation/bank/*.robot

How to run all the robot files: 

		robot -d Results Tests/automation/bank/LoginTest.robot

----------------------------------------------------------------------------------------

PABOT commands: 

How to run all the pabot files: 

		pabot --processes 2 -d Results Tests/bank/*.robot

Note: pabot is used during the build execution to improve the execution speed and time. 
		So, Its not recommended to run for single .robot file
