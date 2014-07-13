# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jan_validator/version'

Gem::Specification.new do |spec|
  spec.name          = "jan_validator"
  spec.version       = JanValidator::VERSION
  spec.authors       = ["OSA Shunsuke"]
  spec.email         = ["hhelibebcnofnenamg@gmail.com"]
  spec.summary       = %q{JAN validator for Rails}
  spec.description   = %q{JAN validator for Rails}
  spec.homepage      = "https://github.com/s-osa/jan_validator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activemodel"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end
