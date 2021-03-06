# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'models_stats/version'

Gem::Specification.new do |spec|
  spec.name          = "models_stats"
  spec.version       = ModelsStats::VERSION
  spec.authors       = ["Andrey Morskov"]
  spec.email         = ["accessd0@gmail.com"]
  spec.summary       = %q{Graphics for your rails models with MetricsGraphics.js and NVD3}
  spec.description   = %q{Graphics for your rails models with MetricsGraphics.js and NVD3. It may show count(or average, or sum, or another sql agregate function) of models for each day with grouping, conditions. Uses Redis for store statistics.}
  spec.homepage      = "https://github.com/accessd/models_stats"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.0"
  spec.add_dependency "redis-rails"
  spec.add_dependency "redis-objects"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "factory_girl_rails"
  spec.add_development_dependency "database_cleaner"
end
