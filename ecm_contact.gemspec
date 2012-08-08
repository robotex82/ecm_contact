$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ecm/contact/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ecm_contact"
  s.version     = Ecm::Contact::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/robotex82/ecm_contact"
  s.summary     = "Basic contact form."
  s.description = "Basic contact form."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.7"
  
  # Module dependencies
  s.add_dependency 'mail_form'
  s.add_dependency 'simple_form'
  
  # Development Server
  s.add_development_dependency "thin"
  
  # Documentation
  s.add_development_dependency "yard"

  # Tests
  s.add_development_dependency "capybara"    
  s.add_development_dependency "rspec-rails", "~> 2.0" 
  s.add_development_dependency "shoulda-matchers"
  
  # Test automation
  s.add_development_dependency 'guard-rails'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-bundler' 
  
  # Data generation
  s.add_development_dependency "factory_girl_rails", "~> 1.0" 
  s.add_development_dependency 'ffaker' 
  s.add_development_dependency 'forgery', '0.5.0'  
end
