# Online-Survey-Portal
An website Application empowered by Java Servlet enables users who has registered to create online survey forms with multiple question types, customizes forms into favorite look and feel with integrated tools, as well as have ability to conduct ongoing surveys from other users

## Features
### Manager Page
- Survey Management Layout: Survey Creation and Modifications
- Survey Insight Layout: helps view created survey quantity, number of conducted surveys
- Account Management with account decentralization capability

### User Page
- Registration form supports new user creation
- Approval system would prevent unauthorized users from accessing the portal
- Ability to conduct and view answered surveys
- Account information management mode supporting various information modifications

## Deployment Steps
- Unzip the download package by choosing “ Extract to … “ option with your personal, favored file archiver utility (either Winrar or 7Zip works best in this instances)

- Download and install Java JDK-1.8 with the attached link
https://drive.google.com/file/d/1Y8HGeztmSuK0lEA58y7HnrZSBt8HDTeE/view?usp=sharing

- Download STS (Spring Tool Suite) IDE from the following link and run its portable version
https://drive.google.com/file/d/1IWw7TkAi65y2mA_sHNLuIsFNqsI0REMB/view?usp=sharing

- Navigate to “File” tab from menu bar, import the existing project with “Existing Maven Project” Option <img src="https://user-images.githubusercontent.com/125796092/220126606-1a4c4de0-6e34-4196-a12f-9aef091a2d4f.png" width="750" height="400">

- Right-click on imported project, navigate to ”Properties” <img src="https://user-images.githubusercontent.com/125796092/220128336-73f692ef-2263-45da-8598-d26567a4ffcc.png" width="750" height="400">

- Navigate to “Java Build Path” -> “Tab Library” -> “JRE System Library” -> “Edit” -> Choose “JRE-1.8” -> Choose “Finish” -> Click on “Apply” <img src="https://user-images.githubusercontent.com/125796092/220128881-2539691b-f5db-4d3d-a151-8057f86f643d.png" width="750" height="400">

- Navigate to “Order and Export” Tab -> Click on “JRE System Library” -> Click on “Apply” <img src="https://user-images.githubusercontent.com/125796092/220129318-906f3474-448d-465c-8c94-0bfb31b284fa.png" width="750" height="400">

- Continue proceeding to “Project Facets” Tab -> “Java” -> Choose “1.8” option -> Click on “Apply and Close” <img src="https://user-images.githubusercontent.com/125796092/220129518-c7cd7d86-0067-4b25-a80e-8c669e8d3f74.png" width="750" height="400">

- Move into “pom.xml” file from package browser and modify MySQL version corresponding to your machine version <img src="https://user-images.githubusercontent.com/125796092/220129910-09eafa5c-4773-4459-8b3f-ce85c0c69ffd.png" width="750" height="400">

- Download Tomcat Server version 8.5 from the attached link and copy its components into C Drive (Windows Drive)
https://drive.google.com/file/d/109IylkQTegrtqf5Axk-TEPfJJ7rDM2VZ/view?usp=sharing
<img src="https://user-images.githubusercontent.com/125796092/220130129-0281d7f2-7a6e-487c-bc8e-9e6a2dd93472.png" width="750" height="400">

- Right-click on package browser in STS IDE and choose New -> Server option <img src="https://user-images.githubusercontent.com/125796092/220130356-0f3c173f-aef3-4363-9a62-4810353999fc.png" width="750" height="400">

- Choose “Apache” Tab -> Click on “8.5” -> Next -> Browse C Drive and look for Tomcat Server folder -> Click “Next” and “Finish” <img src="https://user-images.githubusercontent.com/125796092/220130646-d4068a9d-7c4f-44e0-9a96-23e2e0b5c2f0.png" width="750" height="400">

- Download and Install MySQL along with its components from MySQL official website

- Make sure to name MySQL credentials with “root” for both username and password

- After MySQL workbench has been successfully installed, sign-in and create database with the name “envsurvey”, then use the following code “USE envsurvey” to set its as a active database <img src="https://user-images.githubusercontent.com/125796092/220131092-e203c0bf-0079-49d2-9798-3afb07b99c4d.png" width="750" height="400">

- Navigate to “Server” from within MySQL Workbench, then move into “Data Import” -> “Import from Self-Contained File” -> Browse sql script in project “Database” folder -> Click on “Start Import” <img src="https://user-images.githubusercontent.com/125796092/220131322-87c5df6a-9b59-4a04-9285-7797f7a0fb35.png" width="750" height="400">

- In case your security for MySQL is based on your preferences, you are asked to modify your info in “system.properties” file from “src/main/resources” directory so as for the project to run flawlessly <img src="https://user-images.githubusercontent.com/125796092/220131529-54eb2828-e2cc-43e8-b4cc-4d8d27fa6fe9.png" width="750" height="400">

- Right-click on the project, navigate to “Run as” -> “Run on Server” -> “Tomcat Server 8.5” -> Click on “Next” and “Finish” <img src="https://user-images.githubusercontent.com/125796092/220131661-c591c0e6-dfd7-4eee-8f28-2b2dc1624399.png" width="750" height="400"> <img src="https://user-images.githubusercontent.com/125796092/220131877-8d644cf0-72d2-4d93-8238-704aa3ff2bdc.png" width="750" height="400">

- To run on your specific, favorite browser, set your default browser engine in your OS Settings (either Microsoft Edge or Google Chrome is recommended)

- Should your STS execute the project on its specific browser, you may need to set STS behavior to utilize your favored browser by going to “Windows” Tab -> “Web Browser” -> Choose “Default Web Broswer” <img src="https://user-images.githubusercontent.com/125796092/220132055-6d598255-53d8-4c45-8e93-aea5c3a3890d.png" width="750" height="400">

- The project setup is now completed, enjoy the seamless experiences with robust features
