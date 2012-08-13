# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mysms/version'

Gem::Specification.new do |gem|
  gem.name          = "mysms"
  gem.version       = Mysms::VERSION
  gem.authors       = ["HenrySource"]
  gem.email         = ["hst1805@gmail.com"]
  gem.description   = 'A simple wrapper from MySMS API. Notice: This is not wrapper for http://mysms.com. This gem came from Taiwan`s company. See detial in http://mysms.com.tw.'
  gem.summary       = 'same as description'
  gem.homepage      = "https://github.com/hst1805/mysms"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec", "~> 2.6"
end
