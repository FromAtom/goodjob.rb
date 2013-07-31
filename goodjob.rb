# -*- coding: utf-8 -*-
#!/usr/bin/env ruby

require "socket"

#localhost:3535
sock = TCPSocket.open("127.0.0.1", 3535)
sock.write("HELLO")
sock.close
