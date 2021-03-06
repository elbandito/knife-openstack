# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "knife-openstack/version"

Gem::Specification.new do |s|
  s.name        = "knife-openstack"
  s.version     = Knife::OpenStack::VERSION
  s.platform    = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.md", "LICENSE" ]
  s.authors     = ["JJ Asghar"]
  s.email       = ["jj@chef.io"]
  s.homepage    = "https://github.com/chef/knife-openstack"
  s.summary     = %q{Chef Compute Support for Chef's Knife Command}
  s.description = %q{Chef Compute Support for Chef's Knife Command using knife-cloud gem}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "fog", "~> 1.23"
  s.add_dependency "chef", ">= 11"
  s.add_dependency "knife-cloud", "~> 1.0"

  %w(rake rspec-core rspec-expectations rspec-mocks rspec_junit_formatter).each { |gem| s.add_development_dependency gem }
end
