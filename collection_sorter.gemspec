$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "collection_sorter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "collection_sorter"
  s.version     = CollectionSorter::VERSION
  s.authors     = ["Rahmat Budiharso"]
  s.email       = ["rbudiharso@gmail.com"]
  s.homepage    = "https://github.com/rbudiharso/collection_sorter"
  s.summary     = "Rails plugin to sort collection based on params"
  s.description = "Rails plugin to sort collection based on params"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.1"

  s.add_development_dependency "sqlite3"
end
