module Watcher
  class Process < BasicWatcher
    def initialize(process, options = {})
      @process = process
      @handle = options[:handle] || @process
    end

    def report
      "#{@handle} is #{running? ? '' : 'not '}running"
    end

    private

    def processes
      `ps aux`.chomp
    end

    def process_match
      %r|#{@process}|
    end

    def running?
      process_match === processes
    end

  end
end