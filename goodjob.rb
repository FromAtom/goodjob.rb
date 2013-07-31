# -*- coding: utf-8 -*-
#!/usr/bin/env ruby

require "socket"
require "mac-event-monitor"

#localhost:3535
sock = TCPSocket.open("127.0.0.1", 3535)

monitor = Mac::EventMonitor::Monitor.new

monitor.add_listener(:key_down) do |event|
  #send message when push Shift+F5
  if(event.keycode == 96 && event.shift_key?) then
    sock.write("HELLO")
  end
end
monitor.run

sock.close
