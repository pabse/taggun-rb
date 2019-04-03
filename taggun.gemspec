$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "taggun/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "taggun"
  spec.version     = Taggun::VERSION
  spec.authors     = ["Sebastian Menhofer"]
  spec.email       = ["sebastian.menhofer@gmail.com"]
  spec.homepage    = "https://github.com/pabse/taggun-rb"
  spec.summary     = "Ruby gem for the Taggun receipt OCR-Engine"
  spec.description = "Ruby gem for the Taggun receipt OCR-Engine"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "https://rubygems.org"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_development_dependency "rails", "~> 5.2.2", ">= 5.2.2.1"
  spec.add_development_dependency "pg", '>= 0.18', '< 2.0'
end
