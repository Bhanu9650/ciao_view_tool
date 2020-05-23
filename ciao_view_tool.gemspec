lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/ciao_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "ciao_view_tool"
  spec.version       = CiaoViewTool::VERSION
  spec.authors       = ["Bhanu9650"]
  spec.email         = ["bhanugupta.im@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications I use.}
  spec.description   = %q{Provides generated HTML data for rails application}
  spec.homepage      = "http://devcamp.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/}) 
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rails", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
