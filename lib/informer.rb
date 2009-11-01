$LOAD_PATH << './lib'

require 'informer/basic_watcher'

require 'informer/watcher/hostname'
require 'informer/watcher/process'

require 'informer/reporter/lcd'
require 'informer/reporter/standard_output'

class Informer
  
  attr_reader :watchers
  
  def initialize(reporter)
    @reporter = get_reporter(reporter)
    @watchers = []
  end
  
  def messages
    watchers.map {|watcher| watcher.report}
  end
  
  def report
    @reporter.report(messages)
  end
  
  def self.watch(reporter = "standard_output", &block)
    informer = Informer.new(reporter)
    informer.instance_eval(&block)
    informer.report
  end
  
  private
  
  def get_reporter(reporter)
    begin
      Reporter.const_get("#{reporter.camelize}")
    rescue NameError
      puts "No reporter exists named #{reporter}. We'll use standard output instead."
      Reporter::StandardOutput
    end
  end
  
  def method_missing(method, *args, &block)
    begin
      watcher = Watcher.const_get("#{method.to_s.camelize}")
      @watchers << watcher.new(*args, &block)
    rescue NameError => e
      puts "No watcher named #{method.to_s}. Error was: #{e}"
      super
    end
    
  end
  
end



class String
  def camelize
    self.split(/[^a-z0-9]/).map{|w|w.capitalize}.join("")
  end
end