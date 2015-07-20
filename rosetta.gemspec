Gem::Specification.new do |s|
  s.name                       = 'rosettacode'
  s.version                    = '0.0.9'
  s.date                       = '2015-07-07'
  s.summary                    = "tired of copy and pasting code you've googled? try rosetta"
  s.description                = "are you failing your Intro to Comp Sci course because you can't figure out how to google answers to basic programming challenges? Or maybe you're totally unprepared for job interviews and feel the need to cheat in order to not be outed as a terrible programmer. If either of these sound like you, check out rosettacode!
\n\n
  useage: `Lazy::Rosetta.search(query, language)`. Language defaults to Ruby if not otherwise specified. Example queries include 'FizzBuzz' and 'Fibonacci_sequence'.
\n\n
  See the blog post on this at http://lev.io and the repo at http://github.com/levthedev/rosetta for more details
\n\n
  note: this isn't actually for cheating, please don't do that. it's an expirement in web scraping."
  s.authors                    = ["Lev Kravinsky"]
  s.email                      = 'kravinskylev@gmail.com'
  s.files                      = ["lib/rosetta.rb"]
  s.homepage                   =
    'http://rubygems.org/gems/rosettacode'
  s.license                    = 'MIT'
  s.add_development_dependency('nokogiri')
  s.add_development_dependency('net/http')
end
