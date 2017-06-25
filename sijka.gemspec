# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sijka/version"

Gem::Specification.new do |spec|
  spec.authors       = ["Mario_Sparta"]
  spec.email         = ["megosparta@mail.ru"]
  spec.summary       = "To smoke a cigarette."
  spec.description   = "Smoke without harm to health"
  spec.homepage      = "https://github.com/megosparta/Sijka"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.name          = "sijka"
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.version       = Sijka::VERSION
  spec.add_dependency             'ruby-terminfo', '~> 0.1.1'
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
