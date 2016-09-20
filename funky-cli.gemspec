# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

tasks = File.expand_path('../tasks', __FILE__)
$LOAD_PATH.unshift(tasks) unless $LOAD_PATH.include?(tasks)

require 'da_funk/version.rb'

Gem::Specification.new do |spec|
  spec.name          = "funky-cli"
  spec.version       = DaFunk::VERSION
  spec.authors       = ["Thiago Scalone"]
  spec.email         = ["thiago@cloudwalk.io"]
  spec.summary       = "CLI for DaFunk projects"
  spec.description   = "DaFunk is a Embedded System Framework optimized for programmer happiness and sustainable productivity. It encourages beautiful code by favoring convention over configuration."
  spec.homepage      = "http://github.com/da_funk/funky-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency "rake", "~> 10.4"
  spec.add_dependency "bundler", "~> 1.7"
end
