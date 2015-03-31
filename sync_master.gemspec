# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sync_master/version'

Gem::Specification.new do |spec|
  spec.name          = "sync_master"
  spec.version       = SyncMaster::VERSION
  spec.authors       = ["Janis Miezitis"]
  spec.email         = ["janjiss@gmail.com"]
  spec.summary       = %q{Ruby DSL for building synchronisation mechanisms}
  spec.description   = %q{There are some repetitive patterns when working with synchronisation mechanisms. This Gem was created to standardise this.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
