Given /^I have a HostnameWatcher$/ do
  @watcher = HostnameWatcher.new
end

Then /^it should have a hostname and IP address$/ do
  @watcher.ip.should =~ %r|\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}|
  @watcher.hostname.should =~ %r|(\w+).(\w+).(\w+)|
end

Then /^it should report the hostname and IP address as a message$/ do
  pending
end
