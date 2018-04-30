#!/usr/bin/env rake

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'active_path/path_hints/version'

desc "Release version #{ActivePath::PathHints::VERSION} of the gem"
task :release do

  system "git tag -a v#{ActivePath::PathHints::VERSION} -m 'Tagging #{ActivePath::PathHints::VERSION}'"
  system 'git push --tags'

  system "gem build active_path-path_hints.gemspec"
  system "gem push active_path-path_hints-#{ActivePath::PathHints::VERSION}.gem"
  system "rm active_path-path_hints-#{ActivePath::PathHints::VERSION}.gem"
end
