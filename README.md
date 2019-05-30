#Import database
1. Use MySQL Server version 8.0.15 or 5.7.25
2. if import MySQL 8.0.15 Script.sql to database and set CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


#Application
1. Copy java file to java project
	- You can change the connection settings in the file connect.java 
	- The default settings in the file are 
		user = "root", 
		password = "12345678", 
		url = "jdbc:mysql://localhost:3306/PtoNMusic"
2. Import libraries   
	- mysql-connector-java-8.0.16.jar
	- rs2xml.jar
	- jcalendar-1.4.jar
3. Rename package in java code to new your package name
4. Run mainApp.java
