#!/usr/bin/env ruby
require 'open-uri'
require 'nokogiri'
require 'json'

# Opening page and generating Ruby object tokens for manipulation.
rootdoc = open('https://codeawayhaley.tumblr.com')
rootcontent = rootdoc.read
parsedrootcontent = Nokogiri::HTML(rootcontent)


# Extracts the blog metadata.
metajson = Hash.new
blogcss = parsedrootcontent.css('.content')
# blogjs = parsedrootcontent.script('.content')
blogtitle = parsedrootcontent.title('.content')
metajson[:css] = "#{blogcss}"
# metajson[:js] = "#{blogjs}"
metajson[:title] = "#{blogtitle}"

# Saves the metadata to json file.
File.open("meta.json","w") { | f | f.write(JSON.pretty_generate(metajson)) }


