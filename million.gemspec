# -*- encoding: utf-8 -*-
require File.expand_path('../lib/million/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Luis Ezcurdia"]
  gem.email         = ["ing.ezcurdia@gmail.com"]
  gem.description   = %q{A small gem to get millions of digits from irrational numbers}
  gem.summary       = %q{A small gem to get millions of digits from irrational numbers}
  gem.homepage      = "https://github.com/3zcurdia/million"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "million"
  gem.require_paths = ["lib"]
  gem.version       = Million::VERSION

  gem.add_development_dependency "rspec", ">= 2.0.0"
end
