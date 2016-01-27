# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paynl/version'

Gem::Specification.new do |spec|
  spec.name          = "paynl"
  spec.version       = Paynl::VERSION
  spec.authors = ["Sebastian Berm"]
  spec.email = ["sebastian@sebsoft.nl"]

  spec.summary = %q{Simple interface to create transactions for the Pay.nl PSP}
  spec.description = %q{Simple SDK interface to create transactions for the Pay.nl payment service provider.}
  spec.homepage = "https://github.com/paynl/sdk-ruby"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  # Had to comment the next line to get this working correctly on Windows 10 in RubyMine
  # spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  # spec.add_development_dependency "spec"
  # spec.add_development_dependency "spectask"

  spec.add_runtime_dependency "typhoeus"
end
