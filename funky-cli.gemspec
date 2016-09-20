# coding: utf-8
lib = File.expand_path('../mrblib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'funky-cli/version.rb'

Gem::Specification.new do |spec|
  spec.name          = "funky-cli"
  spec.version       = FunkyCli::VERSION
  spec.authors       = ["Thiago Scalone"]
  spec.email         = ["thiago@cloudwalk.io"]
  spec.summary       = "CLI for DaFunk projects"
  spec.description   = "DaFunk is a Embedded System Framework optimized for programmer happiness and sustainable productivity. It encourages beautiful code by favoring convention over configuration."
  spec.homepage      = "http://github.com/da_funk/funky-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0") + Dir["exe/*"]
  spec.executables   = Dir["bin/*"].collect { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.bindir        = 'bin'
  spec.require_paths = ["mrblib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency "rake", "~> 10.4"
  spec.add_dependency "bundler", "~> 1.7"
end
