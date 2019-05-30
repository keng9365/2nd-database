#Import database
1. Use MySQL Server version 5.7.25 or 8.0.15
2. Import MySQL Script.sql to database


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
