# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ga_collect/version'

Gem::Specification.new do |spec|
  spec.name          = 'ga_collect'
  spec.version       = GaCollect::VERSION
  spec.licenses      = ["MIT"]
  spec.authors       = ["Javi Sanromán"]
  spec.email         = ["javisanroman@gmail.com"]

  spec.summary       = %q{GaCollect is a simple Ruby library which collects metrics on the server side and sends them to google analytics using its measurement protocol}
  spec.description   = %q{GaCollect is a simple Ruby library which collects metrics on the server side and sends them to google analytics using its measurement protocol https://developers.google.com/analytics/devguides/collection/protocol/v1/devguide#usertiming}
  spec.homepage      = "https://github.com/jsanroman/ga_collect"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
