# -*- encoding: utf-8 -*-

require File.expand_path('../lib/galadriel/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'galadriel'
  s.version = Galadriel::VERSION
  s.platform    = Gem::Platform::RUBY
  s.date = '2017-08-16'
  s.summary = "Convert parameter array to a hash array"
  s.description = "Gem for handling parameter arrays."
  s.authors = ["Paulo McNally"]
  s.email = 'paulomcnallyz@moi-solutions.com'
  s.homepage = 'https://github.com/moi-solutions/galadriel'
  s.license = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 2.1.0'

  s.add_dependency("railties", ">= 4.1.0", "< 5.2")
end
