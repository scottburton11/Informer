module Watcher
  class Hostname < BasicWatcher

    attr_reader :ip, :hostname

    def initialize(interface = "eth0")
      @interface = interface
    end

    def report
      gather
      message
    end

    def message
      @message ||= "#{hostname}\n#{ip}"
    end

    protected

    def gather
      @ip = get_ip_address
      @hostname = get_hostname
    end

    private

    def get_hostname
      `hostname`.chomp
    end

    def get_ip_address
      ip_match.match(ifconfig).to_s
    end

    def ifconfig
      `ifconfig #{@interface}`.chomp
    end

    def ip_match
      %r|\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}|
    end

  end
end