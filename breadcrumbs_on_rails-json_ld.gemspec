$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "breadcrumbs_on_rails/json_ld/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "breadcrumbs_on_rails-json_ld"
  s.version     = BreadcrumbsOnRails::JsonLd::VERSION
  s.authors     = ["necojackarc"]
  s.email       = ["necojackarc@gmail.com"]
  s.homepage    = "https://github.com/necojackarc/breadcrumbs_on_rails-json_ld"
  s.summary     = "JSON-LD plugin for Breadcrumbs on Rails"
  s.description = "JSON-LD plugin for Breadcrumbs on Rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "breadcrumbs_on_rails", ">= 3.0.0"

  s.add_development_dependency "railties"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "rubocop"
end
