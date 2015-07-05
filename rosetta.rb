require 'nokogiri'
require 'net/http'

query               = ARGV[0]
ARGV[1].nil? ? lang = "ruby" : lang = ARGV[1]

puts "Your language is #{lang}, and your query is #{query}"

uri                 = URI("http://rosettacode.org/wiki/" + query)
body                = Net::HTTP.get(uri)
document            = Nokogiri::HTML(body)
solutions           = document.css(".#{lang}")
simple_solution     = solutions.map {|solution| puts solution.text.split("  ").join("\n") }
File.write("#{query}.rb", simple_solution)

puts "A solution for #{query} has been written to #{query}.rb"
