$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "hecks_on_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "hecks_on_rails"
  spec.version     = HecksOnRails::VERSION
  spec.authors     = ["Chris Young"]
  spec.email       = ["beesucker@gmail.com"]
  spec.homepage    = ""
  spec.summary     = "Summary of HecksOnRails."
  spec.description = "Description of HecksOnRails."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency 'hecks-active_model', '0.1.0'
  spec.add_dependency "rails", "~> 6.0"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "pry"
end
