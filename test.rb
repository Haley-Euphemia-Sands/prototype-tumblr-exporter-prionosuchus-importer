#!/usr/bin/env ruby
require 'open-uri'
require 'nokogiri'
blogroot = open("https://codeawayhaley.tumblr.com")
blogcontent = blogroot.read
File.open("/Users/haleyeuphemiaashley/Desktop/codeawayhaley.html","w") { | file | file.write("#{blogcontent}")}
blogparse = Nokogiri::HTML(blogcontent)
File.open("/Users/haleyeuphemiaashley/Desktop/codeawayhaley.txt","w") { | file | file.write("#{blogparse}")}
