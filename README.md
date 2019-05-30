You can copy folder projct in https://drive.google.com/drive/folders/1Ff00u_oWKz97EbsBFzho7sq9RaoQNv0m?usp=sharing or you download file java from here

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
	- You can change the settings to match your database 
2. Import libraries   
	- mysql-connector-java-8.0.16.jar
	- rs2xml.jar
	- jcalendar-1.4.jar
3. Rename package in java code to new your package name
4. Run mainApp.java
