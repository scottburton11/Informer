require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

include ProcessHelpers

describe Watcher::Process do
  
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
    
  end
  
end

describe Watcher::Process, "with a custom message" do
  
  before(:each) do
    @watcher = Watcher::Process.new('process-name', :handle => 'Process Handle') do |p|
      "#{p.handle}: #{p.running? ? %q{Active}: %q{Inactive}}"
    end
    @watcher.stub!(:running?).and_return(true)
  end
  
  it "has access to instance data" do
    @watcher.report.should eql("Process Handle: Active")
  end
end



describe Watcher::Process, "privately" do
  
  before(:each) do
    @watcher = Watcher::Process.new('process-name', :handle => 'Process Handle')
  end
  
  it "calls 'ps aux' with a system call" do
    @watcher.should_receive(:`).with("ps -o %cpu -o %mem -o comm -o pid -o user -axc").and_return(ps_aux)
    @watcher.send(:processes).should eql(ps_aux.chomp)
  end
  
  it "says that :running? is true when the process exists" do
    @watcher.stub!(:command).and_return("ruby")
    @watcher.should be_running
  end
  
  it "says that :running? is false when the process doesn't exist" do
    @watcher.stub!(:command).and_return("not-ruby")
    @watcher.should_not be_running
  end
  
end