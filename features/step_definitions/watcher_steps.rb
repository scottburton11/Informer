Given /^I am watching something$/ do
  @watcher = Watcher.new
end

Given /^I have a watcher$/ do
  @watcher = Watcher.new
end

When /^the watcher gathers info$/ do
  @watcher.gather
end


When /^it gathers info$/ do
  When "the watcher gathers info"
end


Then /^it should have a message$/ do
  @watcher.message.should be_kind_of(String)
end
