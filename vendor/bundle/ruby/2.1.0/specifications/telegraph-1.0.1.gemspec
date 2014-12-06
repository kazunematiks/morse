# -*- encoding: utf-8 -*-
# stub: telegraph 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "telegraph"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Juanjo Baz\u{c3}\u{a1}n"]
  s.date = "2010-11-09"
  s.description = "Telegraph provides a simple text-to-morse, morse-to-text translator."
  s.email = "jjbazan@gmail.com"
  s.homepage = "http://github.com/xuanxu/telegraph"
  s.rdoc_options = ["--main", "README.rdoc", "--charset=UTF-8"]
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby gem to read and write Morse code"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 2.1.0"])
    else
      s.add_dependency(%q<rspec>, [">= 2.1.0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.1.0"])
  end
end
