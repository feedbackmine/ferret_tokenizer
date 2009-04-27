
Gem::Specification.new do |s|
  s.name = %q{ferret_tokenizer}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["FeedbackMine"]
  s.date = %q{2009-03-23}
  s.description = %q{A string tokenizer based on Ferret::Analysis::StandardAnalyzer.}
  s.email = %q{feedbackmine@feedbackmine.com}
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["Manifest.txt"]
  s.files = ["ext/ferret_tokenizer.c", "ext/scanner.rl", "ext/url.rl", "ext/extconf.rb", "ext/scanner.c", "ext/email.rl", "ext/scanner.in", "Rakefile", "Manifest.txt","README.txt", "test", "test/test.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://www.tweetjobsearch.com}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["ext"]
  s.rubyforge_project = %q{tokenizer}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{tokenizer}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 1.8.3"])
    else
      s.add_dependency(%q<hoe>, [">= 1.8.3"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.8.3"])
  end
end
