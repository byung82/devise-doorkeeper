# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devise/doorkeeper/version'

Gem::Specification.new do |spec|
  spec.name          = 'devise-doorkeeper'
  spec.version       = Devise::Doorkeeper::VERSION
  spec.authors       = ['BetterUp']
  spec.email         = ['developers@betterup.co']
  spec.summary       = %q{ Integrate Doorkeeper OAuth2 tokens into Devise applications }
  spec.description   = %q{ Support authentication via OAuth2 tokens dispensed from the Doorkeeper authorization flow }
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rails'
  spec.add_dependency 'devise'
  spec.add_dependency 'doorkeeper'
  spec.add_dependency 'devise-two-factor'
  
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'factory_girl_rails'
  spec.add_development_dependency 'factory_girl_rspec'
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'json_spec'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'travis'

  # configure gem version for continuous integration builds
  if ENV['TRAVIS_JOB_NUMBER']
    spec.version = "#{spec.version}.ci.#{ENV['TRAVIS_JOB_NUMBER']}"
  end
end
