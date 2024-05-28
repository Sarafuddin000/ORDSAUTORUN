Automatically start Listner, Database and ORDS to stay connected with your Apex. We need to follow some steps:

1. Go to ORDS installed folder.
2. Create a BAT file or Download mine.
3. Rename file, This name will be used further. You can skip renaming.
4. Change ORACLE_HOME directoy with yours
5. Change ORDS folder location as yours
6. Save, Now download NSSM to use this BAT as service [https://nssm.cc/download]
7. Extract to a folder and open CMD
8. execute

``cd <NSSM FOLDER>``
``nssm.exe install``

9. Path: Provide BAT file location / select BAT file
10. Startup: provide ORDS folder location
11. Arguments: None
12. Service Name: BAT file name, in my case OrdsAutoRun
13. Save and Check by clicking WIN + R > services.msc > find Service Name

14. Find OrdsAutoRun > double click on it > select Startup Type: Automatic and hit Start Button

Run and Debug

15. Stop OracleOraDB19Home1TNSListener, OracleServiceORCL and ORDS [All at once, or check one by one]
16. Now Double click / execute OrdsAutoRun.Bat and wait two minutes




Enjoy almost zero hour downtime of your APEX Build Systems.
