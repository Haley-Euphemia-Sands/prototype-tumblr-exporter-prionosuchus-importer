#!/usr/bin/env ruby
require 'json'
stuff = Hash.new
stuff[:title] = "Testing the JSON"
stuff[:author] = "Haley Euphemia Eleanor Ashley Lisa Praesent"
stuff[:date] = "1-7-2017"
stuff[:time] = "19:35"
stuff[:content] = "hfjfhdshfhw uwrhiughiuwrhguwrhu"
stuff[:markup] = "plain text"
stuff[:notes] = 3000.to_s
stuff[:tags] = "one,two,three,four,five,six,seven,eight,nine,unis,duo,tres,quattour,quinque,sex,septem,octo,novem"
File.open("test.json","w"){ | f | f.write(JSON.pretty_generate(stuff))}