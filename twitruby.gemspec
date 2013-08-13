# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twitruby/version'

Gem::Specification.new do |spec|
  spec.name          = "TwitRuby"
  spec.version       = TwitRuby::VERSION
  spec.authors       = ["alphaKAI"]
  spec.email         = ["alpha.kai.net@alpha-kai-net.info"]
  spec.description   = %q{This is one of the Twitter Libraries.}
  spec.summary       = %q{This is one of the Twitter Libraries.}
  spec.homepage      = "http://alpha-kai-net.info"
  spec.license       = "GPLv3"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
