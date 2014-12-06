#!/usr/bin/env ruby

require 'bundler'
Bundler.require
Dotenv.load

# twitter settings
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['CONSUMER_KEY']
  config.consumer_secret     = ENV['CONSUMER_SECRET']
  config.access_token        = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end

tweet = ARGV[0]
if tweet.nil? then
  puts "何か書いて"
  exit
end

client.update(tweet)

