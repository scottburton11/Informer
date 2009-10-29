# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{Informer}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Scott Burton"]
  s.date = %q{2009-10-29}
  s.default_executable = %q{informer}
  s.description = %q{Informer is a flexible information gathering and reporting system.}
  s.email = %q{scottburton11@gmail.com}
  s.executables = ["informer"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/informer",
     "features/hostname_watcher.feature",
     "features/informer.feature",
     "features/step_definitions/hostname_watcher_steps.rb",
     "features/step_definitions/informer_steps.rb",
     "features/step_definitions/watcher_steps.rb",
     "features/support/env.rb",
     "features/watcher.feature",
     "lib/informer.rb",
     "lib/informer/basic_watcher.rb",
     "lib/informer/reporter/led.rb",
     "lib/informer/reporter/standard_output.rb",
     "lib/informer/watcher/hostname.rb",
     "lib/informer/watcher/process.rb",
     "spec/helpers/host_helpers.rb",
     "spec/helpers/process_helpers.rb",
     "spec/hostname_spec.rb",
     "spec/informer_spec.rb",
     "spec/process_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/scottburton11/informer}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Informer gathers info and shoots it over the wire}
  s.test_files = [
    "spec/helpers/host_helpers.rb",
     "spec/helpers/process_helpers.rb",
     "spec/hostname_spec.rb",
     "spec/informer_spec.rb",
     "spec/process_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
