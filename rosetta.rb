require 'nokogiri'
require 'net/http'

query        = ARGV[0]

if ARGV[1].nil?
  lang = "ruby"
else
  lang = ARGV[1]
end


puts "your lang is #{lang}"
uri          = URI("http://rosettacode.org/wiki/" + query)
body         = Net::HTTP.get(uri)
document     = Nokogiri::HTML(body)
solutions    = document.css(".#{lang}")
simple_ruby_solution = solutions.first.text.split("  ").join("\n")
final_solution = simple_ruby_solution.gsub!(/end\Z/, " \n end")
File.write("#{query}.rb", final_solution)
