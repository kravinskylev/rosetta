require 'nokogiri'
require 'net/http'
module Lazy
  class Rosetta
    def self.search(query, lang="ruby")
      puts "Your language is #{lang}, and your query is #{query}"
      sanitized_query     = query.split(" ").join("_")
      uri                 = URI("http://rosettacode.org/wiki/" + sanitized_query)
      body                = Net::HTTP.get(uri)
      document            = Nokogiri::HTML(body)
      solutions           = document.css(".#{lang}")
      simple_solutions    = solutions.map {|solution| solution.text.split("  ").join("\n") }

      open("#{query}.rb", 'a') { |f|
        simple_solutions.map {|solution| f.puts(solution + "\n\n")}
      }
      unless simple_solutions.empty?
        puts "A solution for #{query} has been written to #{query}.rb\n\n"
        puts "Here is the first solution:\n\n #{simple_solutions.first}\n\n"
      else
        puts "Something is wrong with your query. Here's an example: Lazy::Rosetta.search('Fibonacci_sequence', 'javascript')"
      end
    end
  end
end
