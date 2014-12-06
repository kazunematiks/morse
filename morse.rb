#!/usr/bin/env ruby

require 'bundler'
Bundler.require

# モールス信号
morse = Telegraph.text_to_morse("Kazune")
puts morse

# arduino通信
arduino = ArduinoFirmata.connect "/dev/tty.usbmodem1421"

morse.chars do |m|
  if m == "." then
    arduino.digital_write 13, true
  elsif m == "-" then
    arduino.digital_write 13, true
  else
    arduino.digital_write 13, false
  end
  sleep 1
end


=begin
while true
  arduino.digital_write 13, true
  sleep 1
  arduino.digital_write 13, false
  sleep 1
end
=end
