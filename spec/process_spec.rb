require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Watcher::Process do

  include ProcessHelpers
  
  before(:each) do
    @watcher = Watcher::Process.new('process-name', :handle => 'Process Handle')
  end
  
  describe "gathering info about the host system" do
    
    describe "when the process is running" do
      
      before(:each) do
        @watcher.should_receive(:running?).and_return(true)
      end
      
      it "reports the process label and 'is running'" do
        @watcher.report.should eql("Process Handle is running")
      end
      
    end
    
    describe "when the process isn't running" do
      
      before(:each) do
        @watcher.should_receive(:running?).and_return(false)
      end
      
      it "reports the process label and 'is not running'" do
        @watcher.report.should eql("Process Handle is not running")
      end
      
    end
    
    describe "privately" do
      
      it "calls 'ps aux' with a system call" do
        @watcher.should_receive(:`).with("ps aux").and_return(ps_aux)
        @watcher.send(:processes).should eql(ps_aux.chomp)
      end
      
      it "says that :running? is true when the process exists" do
        @watcher.should_receive(:processes).and_return("process-1\nprocess-2\nprocess-name")
        @watcher.should be_running
      end
      
      it "says that :running? is false when the process doesn't exist" do
        @watcher.should_receive(:processes).and_return("process-1\nprocess-2")
        @watcher.should_not be_running
      end
      
    end
    
  end
  
end