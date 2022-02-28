# Project2-Administrator-System
## Data Structure Design
<img width="1329" alt="image" src="https://user-images.githubusercontent.com/78338843/153800542-2ec4ce35-890c-44d6-a667-30b5b4bb8e29.png">  
## 4 Chat Module
I use socket and SQLite3 to realize the function of P2P chat.  
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
