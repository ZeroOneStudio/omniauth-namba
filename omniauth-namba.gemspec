# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-namba/version"

Gem::Specification.new do |gem|
  gem.authors       = ["Sergey Kishenin", "Michael Romanenko"]
  gem.email         = ["sergey.kishenin@gmail.com", "michael@romanenko.kg"]
  gem.description   = %q{Authenticate to Namba using OAuth.}
  gem.summary       = %q{Authenticate to Namba using OAuth.}
	gem.homepage      = "https://github.com/ZeroOneStudio/omniauth-namba"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-namba"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Namba::VERSION

  gem.add_runtime_dependency "omniauth-oauth"

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "guard"
  gem.add_development_dependency "guard-rspec"
  gem.add_development_dependency "webmock"
  gem.add_development_dependency "rack-test"
  gem.add_development_dependency "multi_json"
end
