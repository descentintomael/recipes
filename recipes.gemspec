$LOAD_PATH << File.expand_path("../lib", __FILE__)
require 'recipes/version'

Gem::Specification.new do |s|
  s.name = 'Recipes'
  s.version = Recipes::VERSION
  s.summary = 'Test Data Generator'
  s.description = 'Create human readable test data generators'
  s.authors = ['Sean Todd']
  s.email = 'sean@paynearme.com'
  s.homepage = 'http://github.com/descentintomael/recipes'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")

  s.require_paths = ['lib']
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")

  s.add_dependency 'factory_girl', '~> 4.2.0'
  s.add_dependency 'activesupport', '3.2.12'

  s.add_development_dependency 'rspec', '~> 2.13.0'

  if RUBY_PLATFORM == "java"
    s.add_development_dependency("activerecord-jdbcsqlite3-adapter")
    s.add_development_dependency("jdbc-sqlite3")
  else
    s.add_development_dependency("sqlite3")
  end
end
