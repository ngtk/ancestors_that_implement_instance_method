# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ancestors_that_implement_instance_method/version'

Gem::Specification.new do |spec|
  spec.name          = "ancestors_that_implement_instance_method"
  spec.version       = AncestorsThatImplementInstanceMethod::VERSION
  spec.authors       = ["Kent Nagata"]
  spec.email         = ["ngtknt@me.com"]

  spec.summary       = %q{get ancestors that implement instance method}
  spec.homepage      = "http://github.com/ngtk/ancestors_that_implement_instance_method"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
