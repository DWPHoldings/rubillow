# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rubillow/version"

Gem::Specification.new do |s|
  s.name        = "rubillow"
  s.version     = Rubillow::VERSION
  s.authors     = ["Matthew Vince"]
  s.email       = ["rubillow@matthewvince.com"]
  s.homepage    = "https://github.com/synewaves/rubillow"
  s.summary     = "Ruby library to access the Zillow API"
  s.description = "Ruby library to access the Zillow API"

  s.rubyforge_project = "rubillow"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake",      "~> 0.9.2"
  s.add_development_dependency "rspec",     "~> 2.6"
  s.add_development_dependency "yard",      ">= 0.6.8"
  s.add_development_dependency "bluecloth", ">= 2.1.0"
  s.add_development_dependency "rcov",      "~> 0.9.10"
  
  s.add_runtime_dependency "nokogiri",      "~> 1.5.0"
end
