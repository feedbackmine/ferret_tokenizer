require 'rubygems'
require 'hoe'

EXT = "ext/ferret_tokenizer.#{Hoe::DLEXT}"

Hoe.new('ferret_tokenizer', '0.1.1') do |p|
  p.author = 'FeedbackMine'
  p.email = 'feedbackmine@feedbackmine.com'
  p.url = 'http://www.tweetjobsearch.com'
  p.summary = 'A string tokenizer based on Ferret::Analysis::StandardAnalyzer.'
  p.description = 'A string tokenizer based on Ferret::Analysis::StandardAnalyzer.'
  
  p.spec_extras[:extensions] = "ext/extconf.rb"
  p.clean_globs << EXT << "ext/*.o" << "ext/Makefile"
end

task :test => EXT

file EXT => ["ext/extconf.rb", "ext/ferret_tokenizer.c"] do
  Dir.chdir "ext" do
    sh "ragel scanner.rl -o scanner.c"
    ruby "extconf.rb"
    sh "make"
  end
end
