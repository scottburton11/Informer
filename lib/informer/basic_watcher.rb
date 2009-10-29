module Watcher
  class BasicWatcher

    attr_reader :message

    def report
      @message = "Superclass called"
    end

  end
end