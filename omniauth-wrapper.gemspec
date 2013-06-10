# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'omniauth/wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-wrapper"
  spec.version       = Omniauth::Wrapper::VERSION
  spec.authors       = ["Zolzaya E."]
  spec.email         = ["zolzaya.erdenebaatar@gmail.com"]
  spec.description   = %q{Omniauth wrapper}
  spec.summary       = %q{Omniauth wrapper}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.13.0"
end
