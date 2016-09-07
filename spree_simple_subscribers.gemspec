# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_simple_subscribers'
  s.version     = '3.0.12'
  s.summary     = 'Subscribers functionality'
  s.description = s.summary
  s.required_ruby_version = '>= 2.1.0'

  s.author    = 'Alexander Bobrov'
  s.email     = 'al.bobrov@itbeaver.co'
  s.homepage  = 'http://itbeaver.co'
  s.license = 'BSD-3'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {spec}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.0.8'

  s.add_development_dependency 'capybara', '~> 2.6'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails', '~> 3.4'
  s.add_development_dependency 'sass-rails', '~> 5.0.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'poltergeist', '~> 1.6'
  s.add_development_dependency 'pry-rails', '>= 0.3.0'
end
