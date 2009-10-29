require 'rubygems'
require 'rake'

$LOAD_PATH << './lib'
require 'informer'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "informer"
    gem.summary = %Q{Informer gathers info and shoots it over the wire}
    gem.description = %Q{Informer is a flexible information gathering and reporting system.}
    gem.email = "scottburton11@gmail.com"
    gem.homepage = "http://github.com/scottburton11/informer"
    gem.authors = ["Scott Burton"]
    gem.executables = ["informer"]
    gem.default_executable = "informer"
  end

rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)
rescue LoadError
  task :features do
    abort "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
  end
end



task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION.yml')
    config = YAML.load(File.read('VERSION.yml'))
    version = "#{config[:major]}.#{config[:minor]}.#{config[:patch]}"
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "Informer #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

