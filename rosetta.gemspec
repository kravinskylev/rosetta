Gem::Specification.new do |s|
  s.name        = 'rosettacode'
  s.version     = '0.0.7'
  s.date        = '2015-07-07'
  s.summary     = "tired of copy and pasting code you've googled? try rosetta"
  s.description = "are you failing your Intro to Comp Sci course because you can't figure out how to google answers to basic programming challenges? Or maybe you're totally unprepared for job interviews and feel the need to cheat in order to not be outed as a terrible programmer. If either of these sound like you, check out rosettacode!
<br>
<br>
  useage: `Lazy::Rosetta.search(query, language)`. Language defaults to Ruby if not otherwise specified. Example queries include 'FizzBuzz' and 'Fibonacci_sequence'.
<br>
<br>


  See the blog post on this at http://lev.io and the repo at http://github.com/kravinskylev/rosetta for more details
<br>
<br>


  note: this isn't actually for cheating, please don't do that. it's an expirement in web scraping."
  s.authors     = ["Lev Kravinsky"]
  s.email       = 'kravinskylev@gmail.com'
  s.files       = ["lib/rosetta.rb"]
  s.homepage    =
    'http://rubygems.org/gems/rosettacode'
  s.license       = 'MIT'
end
