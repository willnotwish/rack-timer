# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack-timer/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-timer"
  spec.version       = RackTimer::VERSION
  spec.authors       = ["Julien Letessier"]
  spec.email         = ["julien.letessier@gmail.com"]
  spec.summary       = %q{Measure time spent in your Rack middlewares}
  spec.description   = %q{Measure time spent in your Rack middlewares}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "rack"
end
