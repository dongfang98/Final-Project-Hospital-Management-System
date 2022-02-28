import sqlite3


def init_db(name):
       db_name = name +'_db.db'
       conn = sqlite3.connect(db_name)
       c = conn.cursor()
       try:

              c.execute('''CREATE TABLE CHATLOG
                     (ID INTEGER PRIMARY KEY     AUTOINCREMENT,
                     TIME              TEXT   NOT NULL,
                     USER              TEXT   NOT NULL,
                     CONTENT           TEXT    NOT NULL);''')
              conn.commit()
       except:
              pass


def print_log(name):
       db_name = name +'_db.db'
       conn = sqlite3.connect(db_name)
       c = conn.cursor()
       cursor = c.execute("SELECT id, time, user, content  from CHATLOG")
       for row in cursor:
              print(f"TIME = {row[1]} {row[3]}")



