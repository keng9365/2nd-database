1. Download project file name "PtoNMusic.zip"
2. Open project in netbeans
3. Import libraries if program error
4. Create new database name "PtoNMusic"
5. Import database form "MySQL Script.sql"

If your database settings do not match You can follow this list
1. change the connection settings in the file connect.java 
	- The default settings in the file are 
		user = "root", 
		password = "12345678", 
		url = "jdbc:mysql://localhost:3306/PtoNMusic"
	- You can change the settings to match your database 
2. Import libraries   
	- mysql-connector-java-8.0.16.jar
	- rs2xml.jar
	- jcalendar-1.4.jar
3. Rename package in java code to new your package name
4. Run mainApp.java
