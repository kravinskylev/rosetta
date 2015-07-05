require 'nokogiri'
require 'net/http'

query        = ARGV[0]

#if ARGV[1].nil?
#  lang = "ruby"
#else
#  lang = ARGV[1]
#end

ARGV[1].nil? ? lang = "ruby" : lang = ARGV[1]

puts "Your language is #{lang}, and your query is #{query}"
uri          = URI("http://rosettacode.org/wiki/" + query)
body         = Net::HTTP.get(uri)
document     = Nokogiri::HTML(body)
solutions    = document.css(".#{lang}")
simple_solution = solutions.first.text.split("  ").join("\n")
File.write("#{query}.rb", simple_solution)
