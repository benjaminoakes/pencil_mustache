# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = 'pencil_mustache'
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Benjamin Oakes']
  s.email       = %w(hello@benjaminoakes.com)
  s.license     = 'MIT'
  s.homepage    = 'http://github.com/benjaminoakes/pencil_mustache'
  s.summary     = 'Need to replace some tokens? This is all you need (Ruby 1.9+).'
  s.description = s.summary

  s.rubyforge_project = 'pencil_mustache'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)
end
