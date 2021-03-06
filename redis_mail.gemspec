# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redis_mail/version'

Gem::Specification.new do |gem|
  gem.name          = "redis_mail"
  gem.version       = RedisMail::VERSION
  gem.authors       = ["Joshua Flanagan"]
  gem.email         = ["jflanagan@peopleadmin.com"]
  gem.description   = %q{A Redis-backed delivery_method for Mail gem}
  gem.summary       = %q{Stores emails in Redis for easy retrieval in test scenarios.}
  gem.homepage      = "https://github.com/PeopleAdmin/redis_mail"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "redis", ">= 2.2.0"
  gem.add_dependency "redis-namespace"
  gem.add_development_dependency "mail"
  gem.add_development_dependency "rspec"
end
