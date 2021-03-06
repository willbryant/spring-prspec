# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "spring-prspec"
  spec.version       = '1.0.0'
  spec.authors       = ["Will Bryant"]
  spec.email         = ["will.bryant@gmail.com"]

  spec.summary       = %q{Spring runner for the parallel_rspec gem.}
  spec.description   = %q{This adds support for running RSpec examples in parallel across N cores using Spring plus the parallel_rspec gem.}
  spec.homepage      = "https://github.com/willbryant/spring-prspec"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "spring", ">= 0.9.1"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
