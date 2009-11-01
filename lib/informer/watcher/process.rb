module Watcher
  class Process < BasicWatcher
    
    attr_reader :handle, :process, :command
    
    def initialize(command, options = {}, &block)
      @custom_message = block if block_given?
      @command = command
      @handle = options[:handle] || command
    end

    def report
      return @custom_message.call(self) if @custom_message
      "#{@handle} is #{running? ? '' : 'not '}running"
    end

    def running?
      process_matcher === processes
    end

    private

    def processes
      # `ps aux`.chomp
      `ps -o %cpu -o %mem -o comm -o pid -o user -axc`.chomp
    end

    def process_matcher
      %r|^\s+(\d+\.\d+)\s+(\d+\.\d+)\s+#{command}\s+(\d+)\s+(\w+)\s+$|
    end

  end
end