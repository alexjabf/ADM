# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "paperclip-cloudfiles"
  s.version = "2.3.10.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jon Yurek", "H. Wade Minter"]
  s.date = "2011-05-27"
  s.description = "Easy upload management for ActiveRecord with Rackspace Cloud Files support"
  s.email = ["jyurek@thoughtbot.com", "minter@lunenburg.org"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "http://github.com/minter/paperclip"
  s.rdoc_options = ["--line-numbers", "--inline-source"]
  s.require_paths = ["lib"]
  s.requirements = ["ImageMagick"]
  s.rubyforge_project = "paperclip"
  s.rubygems_version = "2.0.3"
  s.summary = "File attachments as attributes for ActiveRecord with Rackspace Cloud Files support"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<aws-s3>, [">= 0"])
      s.add_development_dependency(%q<cloudfiles>, [">= 1.4.15"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<aws-s3>, [">= 0"])
      s.add_dependency(%q<cloudfiles>, [">= 1.4.15"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<aws-s3>, [">= 0"])
    s.add_dependency(%q<cloudfiles>, [">= 1.4.15"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
  end
end
