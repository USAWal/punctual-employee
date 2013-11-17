# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'punctual/employee/version'

Gem::Specification.new do |spec|
  spec.name          = "punctual-employee"
  spec.version       = Punctual::Employee::VERSION
  spec.authors       = ["Valeriy Utyaganov"]
  spec.email         = ["usawal@gmail.com"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",  "~> 1.3.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cucumber", "~> 1.3.10"
  spec.add_development_dependency "aruba",    "~> 0.5.3"

  spec.add_runtime_dependency "activerecord", "~> 4.0.1"
  spec.add_runtime_dependency "sqlite3",      "~> 1.3.8"
end
