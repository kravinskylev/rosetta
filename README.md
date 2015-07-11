# rosetta
I was recently asked to write a fizzbuzz solution in a technical interview. To make this challenge more interesting, I wrote a little script that scrapes RosettaCode for Ruby solutions to FizzBuzz. This is nice, but not very useable. So, I packaged it as a gem that will take any query and any language to scrape RosettaCode for.

## example useage
run `gem install rosettacode` from your terminal. also, add `require 'rosetta'` to your gemfile. Now you're ready to go - the gem is namespaced in a module called Lazy (because that's what I am), so you can use it by doing `Lazy::Rosetta.search(query, language)`. If no language is given, it defaults to Ruby. For example, try the query of FizzBuzz - you will see the first solution printed out to the terminal, and a FizzBuzz.rb file is written that contains all the ruby solutions to FizzBuzz from RosettaCode. Another example - try the query of "Fibonacci_sequence" with the language of "javascript".

There is also a CLI version which can be found <a href="https://github.com/kravinskylev/rosettaCLI">here</a>.
