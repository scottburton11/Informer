require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

include HostHelpers


describe Watcher::Hostname do
  
  before(:each) do
    @watcher = Watcher::Hostname.new
    @watcher.stub!(:ip).and_return("192.168.157.129")
    @watcher.stub!(:hostname).and_return("my-hostname")
  end
  
  describe "gathering info on the host system" do
    
    it "reports formatted text with the IP and hostname" do
      @watcher.report.should eql("my-hostname\n192.168.157.129")
    end
  end
  
end


describe Watcher::Hostname, "with a custom message" do
    
  before(:each) do
    @watcher = Watcher::Hostname.new { |w| "The hostname is #{w.hostname}\nand the IP address is #{w.ip}"}
    @watcher.stub!(:ip).and_return("192.168.157.129")
    @watcher.stub!(:hostname).and_return("my-hostname")
  end

  it "allows access to the instance data" do
    @watcher.report.should eql("The hostname is my-hostname\nand the IP address is 192.168.157.129")
  end

end


describe "private methods" do
  
  before(:each) do
    @watcher = Watcher::Hostname.new
  end
  
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