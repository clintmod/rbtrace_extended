
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rbtrace_extended/version"

Gem::Specification.new do |spec|
  spec.name          = "rbtrace_extended"
  spec.version       = RbtraceExtended::VERSION
  spec.authors       = ["Clint Modien"]
  spec.email         = ["cmodien@gmail.com"]

  spec.summary       = "require's rbtrace and optionally requires objspace and calls ObjectSpace.trace_object_allocations_start"
  spec.homepage      = "https://github.com/clintmod/rbtrace_extended"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rbtrace"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.required_ruby_version = '>= 2.1'
end
