#!/usr/bin/env ruby

require 'bundler'
Bundler.require
Dotenv.load

# モールス信号変換
text = ARGV[0]
if text.nil? then
  puts "変換するテキスト入力してちょ"
  exit
end

morse = Telegraph.text_to_morse(text)
puts morse

# arduino通信
puts ENV['CONNECTION_PATH']
arduino = ArduinoFirmata.connect ENV['CONNECTION_PATH']
puts "firmata version #{arduino.version}"

morse.chars do |m|
  if m == "." then
    arduino.digital_write 13, true
    sleep 0.1
  elsif m == "-" then
    arduino.digital_write 13, true
    sleep 0.5
  else
    arduino.digital_write 13, false
    sleep 1
  end
end

# 停止処理
arduino.digital_write 13, false
arduino.close
