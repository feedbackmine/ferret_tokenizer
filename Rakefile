require 'rubygems'
require 'hoe'

EXT = "ext/tokenizer.#{Hoe::DLEXT}"

Hoe.new('tokenizer', '0.1.0') do |p|
  p.author = 'FeedbackMine'
  p.email = 'feedbackmine@feedbackmine.com'
  p.url = 'http://www.tweetjobsearch.com'
  p.summary = 'tokenizer'
  p.description = 'tokenizer'
  
  p.spec_extras[:extensions] = "ext/extconf.rb"
  p.clean_globs << EXT << "ext/*.o" << "ext/Makefile"
end

task :test => EXT

file EXT => ["ext/extconf.rb", "ext/tokenizer.c"] do
  Dir.chdir "ext" do
    sh "ragel scanner.rl -o scanner.c"
    ruby "extconf.rb"
    sh "make"
  end
end
