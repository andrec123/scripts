Open Task Scheduler:

Press Win + R to open the Run dialog.
Type taskschd.msc and press Enter.
Create a Basic Task:

In the Task Scheduler, select "Create Basic Task..." from the right-hand side.
Name and Description:

Provide a name and description for your task, then click "Next."
Trigger Selection:

Choose "When the computer starts" and click "Next."
Action Selection:

Choose "Start a program" and click "Next."
Program/Script and Arguments:

Browse and select the powershell.exe executable. It is usually located in C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe.

In the "Add arguments (optional)" field, enter the following (replace the path with the actual path to your script):

-WindowStyle Hidden -File "C:\Path\To\Your\Script.ps1"
Click "Next."

Summary:

Review your settings, and click "Finish."
Adjust Task Properties (Optional):

In the Task Scheduler, find your newly created task in the middle pane.
Right-click on the task and select "Properties" if you need to make any adjustments, such as running with highest privileges or configuring additional settings.
Run the Task Manually (Optional):

Right-click on your task and select "Run" to test if it executes your script correctly.
Check for Errors:

If your task encounters any errors, you can check the "Last Run Result" column in Task Scheduler to get information about the task execution.
