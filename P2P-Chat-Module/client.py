import socket
from threading import Thread
import sqlite3
import db
import time

name = input("What is your name?")
db.init_db(name)
history = input("Do you want to check the log? Y/N")
if history == 'Y':
    print('Log history:')
    db.print_log(name)
class ChatClient:
 
    def __init__(self):
        self.s = socket.socket()
        server = socket.gethostname()
        port = 1234
        self.s.connect((server, port))   #  connect to server
        # name = input("What is your name?")
        # db.init_db(name)

        self.run()
 
    def run(self):
        prepareRecv = self.PrepareRecv(self.s)
        prepareRecv.start()
        while True:
            data = input("")
            try:
                self.s.send(data.encode())
                if data == "quit":
                    break
            except:
                print("Disconnect with server!")
                break
 
        self.s.close()                   # close connection
 
    class PrepareRecv(Thread):
 
        def __init__(self, _socket):
            Thread.__init__(self)
            self.setDaemon = True        # The main thread ends and terminates the child thread
            self._socket = _socket
 
        def run(self):
            while True:
                try:
                    readText = self._socket.recv(1024).decode()
                    if readText == "":
                        self._socket.close()
                        break
                    else:
                        print(readText)
                        # Store in db
                        t = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
                        db_name = name + '_db.db'
                        conn = sqlite3.connect(db_name)
                        c = conn.cursor()
                        c.execute("INSERT INTO CHATLOG (TIME,USER,CONTENT) VALUES (?, ?, ? )", (t, name, readText))
                        conn.commit()
                except:
                    self._socket.close()
                    break
 
 
if __name__ == '__main__':
    ChatClient()

