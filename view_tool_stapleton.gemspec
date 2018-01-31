
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "view_tool_stapleton/version"

Gem::Specification.new do |spec|
  spec.name          = "view_tool_stapleton"
  spec.version       = ViewToolStapleton::VERSION
  spec.authors       = ["ryanstapleton"]
  spec.email         = ["megalixir.1@gmail.com"]

  spec.summary       = %q{View-specific methods for applications I use.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://github.com/ryanstapleton/view_tool_gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
