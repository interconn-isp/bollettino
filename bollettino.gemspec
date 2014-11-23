# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bollettino/version'

Gem::Specification.new do |spec|
  spec.name          = 'bollettino'
  spec.version       = Bollettino::VERSION
  spec.authors       = ['Alessandro Desantis']
  spec.email         = ['desa.alessandro@gmail.com']
  spec.summary       = 'Bollettino is a tool for generating Italian postal payment slips.'
  spec.description   = 'Bollettino is a tool for generating postal payment slips in the Italian format.'
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'mocha'

  spec.add_runtime_dependency 'virtus', '~> 1.0'
  spec.add_runtime_dependency 'mini_magick', '~> 4.0'
end
