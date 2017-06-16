# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "figaro_sekrets/version"

Gem::Specification.new do |spec|
  spec.name          = "figaro_sekrets"
  spec.version       = FigaroSekrets::VERSION
  spec.authors       = ["fw.matt"]
  spec.email         = ["matt@futureworkshops.com"]

  spec.summary       = "Gem containing rake tasks for encrypting/decrypting application.yml secrets using sekrets gem"
  spec.description   = "Gem containing rake tasks for encrypting/decrypting application.yml secrets using sekrets gem"
  spec.homepage      = "https://github.com/FutureWorkshops/figaro_sekrets"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency 'figaro'
  spec.add_dependency 'sekrets'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
