# -*- encoding: utf-8 -*-
# stub: capistrano-nc 0.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-nc"
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kir Shatrov"]
  s.date = "2014-02-18"
  s.description = "https://github.com/evrone/capistrano-nc"
  s.email = ["shatrov@me.com"]
  s.homepage = "https://github.com/evrone/capistrano-nc"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Capistrano 3 integration with Mountain Lion's Notification Center"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<terminal-notifier>, ["~> 1.5.1"])
      s.add_runtime_dependency(%q<capistrano>, ["~> 3.0"])
    else
      s.add_dependency(%q<terminal-notifier>, ["~> 1.5.1"])
      s.add_dependency(%q<capistrano>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<terminal-notifier>, ["~> 1.5.1"])
    s.add_dependency(%q<capistrano>, ["~> 3.0"])
  end
end
