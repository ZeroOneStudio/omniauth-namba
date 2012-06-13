# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-namba/version"

Gem::Specification.new do |gem|
  gem.authors       = ["Sergey Kishenin"]
  gem.email         = ["sergey.kishenin@gmail.com"]
  gem.description   = %q{Authenticate to Namba using OAuth.}
  gem.summary       = %q{Authenticate to Namba using OAuth.}

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-namba"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Namba::VERSION

  gem.add_runtime_dependency 'omniauth-oauth', '~> 1.0.0'

  gem.add_development_dependency 'rspec', '~> 2.7.0'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'rack-test'
end
