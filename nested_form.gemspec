Gem::Specification.new do |s|
  s.name        = "bbenezech-nested_form"
  s.version     = "0.0.6"
  s.authors     = ["Ryan Bates", "Andrea Singh"]
  s.email       = "ryan@railscasts.com"
  s.homepage    = "http://github.com/bbenezech/nested_form"
  s.summary     = "Gem to conveniently handle multiple models in a single form. Version maintained by fxposter, with some patches aimed at RailsAdmin."
  s.description = "Gem to conveniently handle multiple models in a single form with Rails 3 and jQuery or Prototype. Version maintained by fxposter, with some patches aimed at RailsAdmin."

  s.files        = Dir["{lib,spec,vendor}/**/*", "[A-Z]*"] - ["Gemfile.lock"]
  s.require_path = "lib"

  s.add_development_dependency "rspec-rails", "~> 2.6.0"
  s.add_development_dependency "mocha"

  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.4"
end
