# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-opal/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-opal"
  spec.version       = Jekyll::Opal::VERSION
  spec.authors       = ["Parker Moore"]
  spec.email         = ["parkrmoore@gmail.com"]
  spec.summary       = %q{Let Jekyll convert your Ruby into JavaScript using Opal.}
  spec.homepage      = "https://github.com/jekyll/jekyll-opal"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "opal", "~> 0.8"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "jekyll", ENV["JEKYLL_VERSION"] ? "~> #{ENV["JEKYLL_VERSION"]}" : ">= 2.0"
end
