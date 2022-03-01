# Project2-Administrator-System
## 1 User Story
- Patients
  - Patient can enter measurement at any time
  - Patient can write a text or upload video or voice message to the MP
  - Patient can book an appointment with the MP
  - Patient can view their medical measurements
- Medical Professionals (Nurses and Doctors)
- Administrators

## 2 Environment
## 3 Database Schematic
Database relational table
<img width="1329" alt="image" src="https://user-images.githubusercontent.com/78338843/153800542-2ec4ce35-890c-44d6-a667-30b5b4bb8e29.png">  
I use Mysql to build the database:  
<img width="1352" alt="image" src="https://user-images.githubusercontent.com/78338843/156080393-99e0d9c9-bfec-4527-8f0d-a8d8807ee1dd.png">

 - 1.1 People  
Relation People is an outer database containing information of citizens, it can be realized by getting legally access to the database of government.  
This database contains ID, name and gender of a citizen. Where ID is the  major key.
 - 1.2 Patient  
Relation Patient contains the information of patients, it is a private database maintained by hospital. Everyone who wants to make an appointment should create a patient account with his or her name, age, gender and ID. Each patient is assigned a PID as majot key.
 - 1.3 Staff  
Relation Staff contains the information of staffs, it is a private database maintained by hospital. Each staff of hospital should have a staff account with his or her name, age, gender, ID,Birth, address and phone number. Each staff has a unique SID. Staff's account also specifies his or her duty and sector.
 - 1.4 Sector  
This relation contains the information of sectors in hospital.
 - 1.5 Duty  
This relation contains duty of a staff.
 - 1.6 Appointment  
Every account in Patient database can make appointment, appointments are saved in Appointment database. The database specifies the date of appointment as well as the information of a patient. The major key of this database is AID.
 - 1.7 Appointment Type  
To make the system more flexible, my system surpport a Appointment Type database. It specifies the type of each appointment.Each operation in Appointment database will result in changes in Appointment Type.
 - 1.8 Appointment Calendar  
This database shows the number of appointment avaliable for a specific type everyday, the major key of this database is Date and AType. The system will first check if an specific appointment is availiable before adding it into the Appointment database. Each operation in Appointment database will result in changes in Appointment Calendar.
 - 1.9 Diagnose  
Appointment will be processed and it result is saved in Diagnose database, this database contains diagnoses from doctors and may lead to Physical Examination. The major key of this database is DID.
 - 1.10 Physical Examination  
Appointments for Physical Examination are saved in Physical Examination database, it specifies the type and date of examination. Before an Appointment is made, system should check Equipment relation to see if specific machine is avaliable.
 - 1.11 Medical Equipment Management  
This database assign equipment for each examination, it connect the Physical Examination database and Equipment database.
 - 1.12 Equipment  
This database shows the avaliability of equipments.
 - 1.13 Blood Pressure  
This database contains the result of Blood Pressure test.
 - 1.14 Pulse  
This database contains the result of Pulse test.
 - 1.15 Glucometer  
This database contains the result of Glucometer test.
 - 1.16 Thermometer  
This database contains the result of Thermometer test.

## 4 Chat Module
I use socket and SQLite3 to realize the function of P2P chat.  
<img width="1723" alt="image" src="https://user-images.githubusercontent.com/78338843/156035093-7f5942b0-861c-4777-af1a-878d88e800fc.png">
### 4.1 Database
SQLite3 is used.
- Client-side runtime stores chat logs locally  
- Does not store data on server side  
### 4.2 Client side
- Show information about users who entered and exited the chat room  
- Displays the content of the chat between users  
- Type "quit" to exit the chat  
### 4.3 Server side
- Displays information about users who entered and exited the chat room  
- Does not display user chat content  
