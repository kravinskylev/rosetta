require 'nokogiri'
require 'net/http'

query               = ARGV[0]
ARGV[1].nil? ? lang = "ruby" : lang = ARGV[1]

puts "Your language is #{lang}, and your query is #{query}"

uri                 = URI("http://rosettacode.org/wiki/" + query)
body                = Net::HTTP.get(uri)
document            = Nokogiri::HTML(body)
solutions           = document.css(".#{lang}")
simple_solutions    = solutions.map {|solution| solution.text.split("  ").join("\n") }

open("#{query}.rb", 'a') { |f|
  simple_solutions.map {|solution| f.puts(solution + "\n\n")}
}

puts "A solution for #{query} has been written to #{query}.rb\n\n"
puts "Here is the first solution:\n\n #{simple_solutions.first}\n\n"

