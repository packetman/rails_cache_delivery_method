$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_cache_delivery_method/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_cache_delivery_method"
  s.version     = RailsCacheDeliveryMethod::VERSION
  s.authors     = ["Jason T. Carrell"]
  s.email       = ["jasoncarrell86@gmail.com"]
  s.homepage    = "https://github.com/packetman/rails_cache_delivery_method"
  s.summary     = "Rails 3.2.0 compatible version of action_mailer_cache_delivery plugin"
  s.description = "Rails 3.2.0 compatible version of action_mailer_cache_delivery plugin"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 3.2.0"

  s.add_development_dependency "sqlite3"
end
