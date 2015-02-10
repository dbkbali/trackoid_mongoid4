# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

require "trackoid/version"

Gem::Specification.new do |s|
  s.name = "trackoid_4"
  s.version = Trackoid::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["David Krett"]
  s.email = "david@w2d.asia"
  s.homepage = "http://github.com/dbkbali/trackoid_mongoid4"
  s.summary = "Trackoid is an easy scalable analytics tracker using MongoDB and Mongoid - compatible with Mongoid 4.0"
  s.description = "Trackoid uses an embeddable approach to track analytics data using the poweful features of MongoDB for scalability"
  s.rubyforge_project = "trackoid_mongoid4"
  s.require_paths = ["lib"]
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.add_dependency('mongoid', '~> 4.0.1')
  s.add_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'mocha'
end