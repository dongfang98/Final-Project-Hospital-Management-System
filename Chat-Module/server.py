from socketserver import TCPServer, ThreadingMixIn, StreamRequestHandler
import time
 
class Server(ThreadingMixIn, TCPServer):
 
    def __init__(self, server_address, RequestHandlerClass):
        TCPServer.__init__(
            self, server_address, RequestHandlerClass)
        self.users = {}
 
 
class MyHandler(StreamRequestHandler):
 
    def handle(self):
        self.addr = self.request.getpeername()
        self.server.users[self.addr[1]] = self.request
        message = "User:" + self.addr[0] + ":" + str(self.addr[1]) + \
            " " +  "join the room"
        print(time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()))
        print(message)
        self.broadCast("join the room")
 
        while True:
            try:
                data = self.request.recv(1024).decode()
                if data == "quit" or data == "":
                    del self.server.users[self.addr[1]]
                    break
                self.broadCast(data)
            except:
                break
        self.request.close()
        message2 = "User:" + self.addr[0] + ":" + str(self.addr[1]) + \
            " " +  "leave the room"
        print(time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()))
        print(message2)
        self.broadCast("leave the room")
 
    def broadCast(self, message):
        for user, output in self.server.users.items():
            output.send(("User:" + self.addr[0] + ":" + str(self.addr[1]) +
                         " " +  " >> " + str(message)).encode())
 
 
if __name__ == "__main__":
    host = ""
    port = 1234
    server = Server((host, port), MyHandler)
 
    server.serve_forever()

