require 'nokogiri'
require 'net/http'

class RosettaCode
  def self.get_solution
   @query = ARGV[0]
   # get HTML from the rosetta
   uri          = URI("http://rosettacode.org/wiki/" + @query)
   body         = Net::HTTP.get(uri)
   # parse it and use CSS selectors to find the ruby solution
   document     = Nokogiri::HTML(body)
   solutions    = document.css('.ruby')
   # format the first solution from text/html into executable ruby
   simple_ruby_solution = solutions.first.text.split("  ").join("\n")
   #trying to fix lack of space before final end
   final_solution = simple_ruby_solution.gsub("end$", " \n end")
   puts final_solution
   puts eval(final_solution)
  end
end

RosettaCode.get_solution
