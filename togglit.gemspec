# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'togglit/version'

Gem::Specification.new do |spec|
  spec.name          = "togglit"
  spec.version       = Togglit::VERSION
  spec.authors       = ["FLY Online Tools"]
  spec.email         = ["support@flyonlinetools.com"]

  spec.summary       = %q{Togglit provides toggle show/hide capability for Rails applications.}
  spec.description   = %q{Togglit is a Rails Javascript gem for Rails applications that provides toggle show/hide capability which is easy to connect to your view elements.}
  spec.homepage      = "http://github.com/vanboom/togglit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", ">= 12.3.3"
end
