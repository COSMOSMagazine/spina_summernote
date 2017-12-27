$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spina_summernote/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina_summernote"
  s.version     = SpinaSummernote::VERSION
  s.authors     = ["Daniel Brooker"]
  s.email       = ["dan@nocturnalcode.com"]
  s.homepage    = "https://github.com/CosmosMagazine/spina_summernote"
  s.summary     = "Use summernote as the rich text editor in SpinaCMS"
  s.description = "Use summernote as the rich text editor in SpinaCMS"
  s.license     = "MIT"

  s.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "spina", "> 0.11.1"
  s.add_dependency 'summernote-rails'
  s.add_dependency 'bootstrap', '> 3'
  s.add_dependency 'rails-assets-tether'

  s.add_development_dependency "sqlite3"
end
