$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_menu/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_menu"
  s.version     = SimpleMenu::VERSION
  s.authors     = ["Jared Howard"]
  s.email       = ["jared@howardpants.com"]
  s.summary     = "Simple class for menus."
  s.description = "Simple class to set up grouped items that can be used in displaying in a menu system."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
