require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Watcher::Hostname do
  
  include HostHelpers
  
  before(:each) do
    @watcher = Watcher::Hostname.new
  end
  
  describe "gathering info on the host system" do
    before(:each) do
      @watcher.should_receive(:get_ip_address).and_return("192.168.157.129")
      @watcher.should_receive(:get_hostname).and_return("localhost")
    end
    
    it "reports formatted text with the IP and hostname" do
      @watcher.report.should eql("localhost\n192.168.157.129")
    end
  end
  
  describe "private methods" do
    describe "get_ip_address method" do
      before(:each) do
        @watcher.should_receive(:ifconfig).and_return(ifconfig_eth0)
      end
      it "calls ifconfig with a system call" do
        @watcher.send(:get_ip_address).should eql("192.168.157.129")
      end
    end

    describe "ifconfig method" do
      
      before(:each) do
        @watcher.should_receive(:`).with("ifconfig eth0").and_return(ifconfig_eth0)
      end
      
      it "calls ifconfig with a system call" do
        @watcher.send(:ifconfig).should eql(ifconfig_eth0.chomp)
      end
      
    end

    describe "get_hostname method" do

      before(:each) do
        @watcher.should_receive(:`).with("hostname").and_return("localhost")
      end
      
      it "calls hostname with a system call" do
        @watcher.send(:get_hostname).should eql("localhost")
      end

    end
    
  end
end