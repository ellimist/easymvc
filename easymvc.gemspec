# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easymvc/version'

Gem::Specification.new do |spec|
  spec.name          = "easymvc"
  spec.version       = Easymvc::VERSION
  spec.authors       = ["Adrian Bordinc"]
  spec.email         = ["adrian.bordinc@gmail.com"]
  spec.summary       = %q{EasyMVC}
  spec.description   = %q{EasyMVC framework developed with Rack for learning purposes}
  spec.homepage      = "http://a22b06.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "rack"
end
