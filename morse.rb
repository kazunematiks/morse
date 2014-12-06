#!/usr/bin/env ruby

require 'bundler'
Bundler.require

str = "Hello world"
puts Telegraph.text_to_morse(str)

