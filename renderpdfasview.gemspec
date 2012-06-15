# -*- encoding: utf-8 -*-
require File.expand_path('../lib/renderpdfasview/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sadan Masroor"]
  gem.email         = ["sadanmasroor87@gmail.com"]
  gem.description   = %q{A Ruby Gem to render views in PDF Format}
  gem.summary       = %q{A Ruby Gem to render views in PDF Format}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "renderpdfasview"
  gem.require_paths = ["lib"]
  gem.version       = Renderpdfasview::VERSION
  
  gem.add_dependency("capybara", ">= 0.4.0")
  gem.add_dependency("prawn","0.8.4")
  
  
end
