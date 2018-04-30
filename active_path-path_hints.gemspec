$:.push File.expand_path('../lib', __FILE__)
require 'active_path/path_hints/version'

Gem::Specification.new do |s|
  s.name        = 'active_path-path_hints'
  s.version     = ActivePath::PathHints::VERSION
  s.date        = '2018-04-28'
  s.summary     = "ActivePath Path Hints"
  s.description = "Path hints for your Rails 5 partials"
  s.authors     = ["Ryan Tulino"]
  s.email       = 'rtulino@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'http://rubygems.org/gems/active_path-path_hints'
  s.required_ruby_version = '>= 2.2.0'
  s.add_dependency 'rails', '~> 5'
  s.add_dependency 'active_path', '~> 0.1.0'
end