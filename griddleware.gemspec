# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{griddleware}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["meanmarcus", "Matt Mongeau"]
  s.date = %q{2010-03-15}
  s.description = %q{Rack middleware to assists in serving of GridFileSystem files}
  s.email = %q{conradmr@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "griddleware.gemspec",
     "lib/griddleware.rb",
     "lib/griddleware/browser_helper.rb",
     "lib/griddleware/grid_file.rb",
     "test/fixtures/baboon.jpg",
     "test/helper.rb",
     "test/rails_helper.rb",
     "test/rails_root/README",
     "test/rails_root/Rakefile",
     "test/rails_root/app/controllers/application_controller.rb",
     "test/rails_root/app/controllers/documents_controller.rb",
     "test/rails_root/app/helpers/application_helper.rb",
     "test/rails_root/app/models/document.rb",
     "test/rails_root/app/views/documents/index.html.erb",
     "test/rails_root/config/boot.rb",
     "test/rails_root/config/database.yml",
     "test/rails_root/config/environment.rb",
     "test/rails_root/config/environments/development.rb",
     "test/rails_root/config/environments/production.rb",
     "test/rails_root/config/environments/test.rb",
     "test/rails_root/config/initializers/backtrace_silencers.rb",
     "test/rails_root/config/initializers/griddle.rb",
     "test/rails_root/config/initializers/inflections.rb",
     "test/rails_root/config/initializers/mime_types.rb",
     "test/rails_root/config/initializers/new_rails_defaults.rb",
     "test/rails_root/config/initializers/session_store.rb",
     "test/rails_root/config/locales/en.yml",
     "test/rails_root/config/routes.rb",
     "test/rails_root/db/development.sqlite3",
     "test/rails_root/db/seeds.rb",
     "test/rails_root/db/test.sqlite3",
     "test/rails_root/doc/README_FOR_APP",
     "test/rails_root/log/development.log",
     "test/rails_root/log/production.log",
     "test/rails_root/log/server.log",
     "test/rails_root/log/test.log",
     "test/rails_root/public/404.html",
     "test/rails_root/public/422.html",
     "test/rails_root/public/500.html",
     "test/rails_root/public/_index.html",
     "test/rails_root/public/favicon.ico",
     "test/rails_root/public/images/rails.png",
     "test/rails_root/public/javascripts/application.js",
     "test/rails_root/public/javascripts/controls.js",
     "test/rails_root/public/javascripts/dragdrop.js",
     "test/rails_root/public/javascripts/effects.js",
     "test/rails_root/public/javascripts/prototype.js",
     "test/rails_root/public/robots.txt",
     "test/rails_root/script/about",
     "test/rails_root/script/console",
     "test/rails_root/script/dbconsole",
     "test/rails_root/script/destroy",
     "test/rails_root/script/generate",
     "test/rails_root/script/performance/benchmarker",
     "test/rails_root/script/performance/profiler",
     "test/rails_root/script/plugin",
     "test/rails_root/script/runner",
     "test/rails_root/script/server",
     "test/rails_root/test/fixtures/baboon.jpg",
     "test/rails_root/test/fixtures/fox.jpg",
     "test/rails_root/test/fixtures/sample.pdf",
     "test/rails_root/test/integration/grid_file_test.rb",
     "test/rails_root/test/performance/browsing_test.rb",
     "test/rails_root/test/test_helper.rb",
     "test/test_griddleware.rb"
  ]
  s.homepage = %q{http://github.com/meanmarcus/griddleware}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Rack middleware to assists in serving of GridFileSystem files}
  s.test_files = [
    "test/helper.rb",
     "test/rails_helper.rb",
     "test/rails_root/app/controllers/application_controller.rb",
     "test/rails_root/app/controllers/documents_controller.rb",
     "test/rails_root/app/helpers/application_helper.rb",
     "test/rails_root/app/models/document.rb",
     "test/rails_root/config/boot.rb",
     "test/rails_root/config/environment.rb",
     "test/rails_root/config/environments/development.rb",
     "test/rails_root/config/environments/production.rb",
     "test/rails_root/config/environments/test.rb",
     "test/rails_root/config/initializers/backtrace_silencers.rb",
     "test/rails_root/config/initializers/griddle.rb",
     "test/rails_root/config/initializers/inflections.rb",
     "test/rails_root/config/initializers/mime_types.rb",
     "test/rails_root/config/initializers/new_rails_defaults.rb",
     "test/rails_root/config/initializers/session_store.rb",
     "test/rails_root/config/routes.rb",
     "test/rails_root/db/seeds.rb",
     "test/rails_root/test/integration/grid_file_test.rb",
     "test/rails_root/test/performance/browsing_test.rb",
     "test/rails_root/test/test_helper.rb",
     "test/test_griddleware.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<griddle>, [">= 0.1.0"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    else
      s.add_dependency(%q<griddle>, [">= 0.1.0"])
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<griddle>, [">= 0.1.0"])
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
  end
end

