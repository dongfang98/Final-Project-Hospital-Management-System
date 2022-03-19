# Project2-Hospital-Management-System
I implement some basic functions as a Java Web application, and deploy it to AWS.  
[1. User Story](#user-story)  
[2. Environment](#environment)  
[3. Hospital Management System](#hospital-management-system )  
[4. Database Schematic](#database-schematic)  
[5. Chat Module](#chat-module)  
## User Story
- Patients 
  - See doctor list and make appointments with them
  - Manage/cancel their appointments 
  - Modify their own personal information and change password
  - View their medical measurements
  - Check the hospital notices
  - Chat with medical professionals

- Medical Professionals (Nurses and Doctors)
  - Browse patient list and make appointments with them
  - MP can see all appointments booked at any time
  - Manage/cancel their appointments 
  - Assign medical measurements to appointments 
  - Assign medical history to patients
  - Modify their own personal information and change password  
  - Check the hospital notices
  - Chat with patients

- Administrators
  - Modify their own personal information and change password  
  - See log history of all the users
  - Manage doctor list, add/delete/modify their information
  - Manage patient list, add/delete/modify their information
  - Add/delete departments of the hospital
  - Manage appointment list
  - Post a notice on the bulletin board

## Environment
```
Java 1.8
Python 3.8
Mysql 8.0.22
Navicat 16.0.8
Tomcat 8.5
IntelliJ IDEA 2020.2.1,
```
Open 'hospital_layui.sql' in Navicat, and connect to the server.  
Edit configurations in IDEA with Tomcat in path run project, it will be shown in the browser.  
### Resources:
Navicat: https://www.navicat.com/en/download/navicat-for-mysql  
Tomcat: https://tomcat.apache.org/download-80.cgi

## Hospital Management System 
### (Functions I Implemented)
### 3.1 Sign in Page
  - Old user can select Role(Admin/Patient/Doctor) and input User Name/ Password/ Verification Code to sign in  
  - New user can click the 'Create Account' Button and input their personal information to create an account. Personal information includes Role / Portrait / Date of birth / User name / Name / Address / Password / Gender / Phone / Email  
  - Roles:  
```
<option value="1">Administrator</option>
<option value="2">Patient</option>
<option value="3">Doctor/Nurse</option>
```
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/156493283-a0e78a48-3497-4805-aba2-0afbc33bfdc6.png">

### 3.2 Patient
  - Patients' homepage, with dashboard and local time.  
Three functions can be found on the left: Appointment List, Patient Information and Doctor List.
You can also see the hospital's notice here.
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/156495997-98d4758e-454a-469b-86bc-48c854678517.png">

  - My Appointment  
Appointment list with doctor's information and appointment's time. You can edit or cancel the appointment here.  
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/156495863-6de7d6c8-8a5a-4dd6-abb3-664e073b38e8.png">

  - Personal Information  
Edit personal information, including Role / Portrait / Date of birth / User name / Name / Address / Password / Gender / Phone / Email  
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/156495916-f2e01248-b2bf-450e-9cf4-88320ada6ce9.png">

  - Change Password  
User name and double checked password are needed.  
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/156495934-da7030ea-b9d5-4a70-adf5-20dcd2dacfc0.png">

  - Doctor List  
All the doctors available are listed here, with their title and department.  
Patients can make appointment here.  
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/156495946-cfabceac-5b54-42f0-9afc-8233dd721ae3.png">

### 3.3 Doctor/Nurse
  - Doctor's homepage, with dashboard and local time.  
Three functions can be found on the left: Appointment List, Patient History and Doctor Information.
You can also see the hospital's notice here.
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/156498534-010d978c-2d5f-4ad7-b72c-e15c63e2b403.png">

  - Patient List
Show all the patients applying for an appointment, can click the button to accept.
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/156498557-647069c8-d018-4e1a-a109-40876f0b677e.png">

  - Appointment
Show all the appointments, with information of the patient, can add test result here.  
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/156498576-682a938f-3dbf-4bb3-afab-67077ac55c5d.png">

  - Medical List
Assign medical measurements to appointments.  
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/156498663-dc30a430-3f85-4e72-9328-df777eb81870.png">

  - Personal Information
Edit personal information, including Role / Portrait / Date of birth / User name / Name / Address / Password / Gender / Phone / Email  
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/156498722-5448f8ab-3119-4bbc-89e8-af1aa3c68989.png">


### 3.4 Administrator
  - Administrator's homepage, with dashboard and local time.  
Three functions can be found on the left: Doctor Management, Patient Management, Announcement, Department Management.  
You can also see the hospital's notice here.
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/156497982-0050476e-175c-4535-87c2-07af78f45b00.png">
  - My Panel   
Three functions: Personal Information, Change Password and Log History.  
Can see all the user's log history, including User Name, IP and Time.  
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/159111378-6ff049b7-7bc4-45f3-8461-2873aaae67bc.png">
  - Doctor Management  
Show doctor list, including all the doctors' personal information, can edit/add/delete.  
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/159111445-1b0e6674-7cf6-4f81-9f34-03b1a626b7f5.png">
  - Patient Management  
Show patient list, including all the patients' personal information, can edit/add/delete.  
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/159111470-9875457d-0ed7-40ad-bfe1-d7c03a3b7ffb.png">
  - Announcement  
Post/delete a notice on the bulletin board.  
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/159111488-0e9bb524-a147-4c8e-b1fd-678f49d7052b.png">
  - Department Management  
Department list, can add/delete departments of the hospital.
<img width="1792" alt="image" src="https://user-images.githubusercontent.com/78338843/159111508-290c9fff-5e79-4580-9898-39daa047e6d5.png">

## Database Schematic
  - Database relational table
<img width="1329" alt="image" src="https://user-images.githubusercontent.com/78338843/153800542-2ec4ce35-890c-44d6-a667-30b5b4bb8e29.png">  
  - I use Mysql to build the database:  
<img width="1352" alt="image" src="https://user-images.githubusercontent.com/78338843/156080393-99e0d9c9-bfec-4527-8f0d-a8d8807ee1dd.png">


 - 4.1 People  
Relation People is an outer database containing information of citizens, it can be realized by getting legally access to the database of government.  
This database contains ID, name and gender of a citizen. Where ID is the  major key.
 - 4.2 Patient  
Relation Patient contains the information of patients, it is a private database maintained by hospital. Everyone who wants to make an appointment should create a patient account with his or her name, age, gender and ID. Each patient is assigned a PID as majot key.
 - 4.3 Staff  
Relation Staff contains the information of staffs, it is a private database maintained by hospital. Each staff of hospital should have a staff account with his or her name, age, gender, ID,Birth, address and phone number. Each staff has a unique SID. Staff's account also specifies his or her duty and sector.
 - 4.4 Sector  
This relation contains the information of sectors in hospital.
 - 4.5 Duty  
This relation contains duty of a staff.
 - 4.6 Appointment  
Every account in Patient database can make appointment, appointments are saved in Appointment database. The database specifies the date of appointment as well as the information of a patient. The major key of this database is AID.
 - 4.7 Appointment Type  
To make the system more flexible, my system surpport a Appointment Type database. It specifies the type of each appointment.Each operation in Appointment database will result in changes in Appointment Type.
 - 4.8 Appointment Calendar  
This database shows the number of appointment avaliable for a specific type everyday, the major key of this database is Date and AType. The system will first check if an specific appointment is availiable before adding it into the Appointment database. Each operation in Appointment database will result in changes in Appointment Calendar.
 - 4.9 Diagnose  
Appointment will be processed and it result is saved in Diagnose database, this database contains diagnoses from doctors and may lead to Physical Examination. The major key of this database is DID.
 - 4.10 Physical Examination  
Appointments for Physical Examination are saved in Physical Examination database, it specifies the type and date of examination. Before an Appointment is made, system should check Equipment relation to see if specific machine is avaliable.
 - 4.11 Medical Equipment Management  
This database assign equipment for each examination, it connect the Physical Examination database and Equipment database.
 - 4.12 Equipment  
This database shows the avaliability of equipments.
 - 4.13 Blood Pressure  
This database contains the result of Blood Pressure test.
 - 4.14 Pulse  
This database contains the result of Pulse test.
 - 4.15 Glucometer  
This database contains the result of Glucometer test.
 - 4.16 Thermometer  
This database contains the result of Thermometer test.

## Chat Module
I use socket and SQLite3 to realize the function of P2P chat.  
<img width="1723" alt="image" src="https://user-images.githubusercontent.com/78338843/156035093-7f5942b0-861c-4777-af1a-878d88e800fc.png">
### 5.1 Database
SQLite3 is used.
- Client-side runtime stores chat logs locally  
- Does not store data on server side  
### 5.2 Client side
- Show information about users who entered and exited the chat room  
- Displays the content of the chat between users  
- Type "quit" to exit the chat  
### 5.3 Server side
- Displays information about users who entered and exited the chat room  
- Does not display user chat content  
