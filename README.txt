== Overview
A string tokenizer based on Ferret::Analysis::StandardAnalyzer. I made some improvements for better text analysis.

== Install

sudo gem sources -a http://gems.github.com   (you only have to do this once)
sudo gem install feedbackmine-ferret_tokenizer

== Usage

require 'ferret_tokenizer'
t = FerretTokenizer.new '@feedbackmine, I LOVE this!!! :-)'
while (tok = t.next)
  p tok
end

== Follow us on twitter

http://twitter.com/feedbackmine

