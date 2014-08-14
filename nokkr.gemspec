# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nokkr/version'

Gem::Specification.new do |spec|
  spec.name          = "nokkr"
  spec.version       = Nokkr::VERSION
  spec.authors       = ["Ray Williams"]
  spec.email         = ["ray.williams06@gmail.com"]
  spec.summary       = "Nokogiri wrapper to create page objects for the purpose of extending other classes"
  spec.description   = %q{Nokogiri wrapper to create page objects for the purpose of extending other classes}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "nokogiri"
end
