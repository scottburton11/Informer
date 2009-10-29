When /^the informer runs$/ do
  Informer.run
end

Then /^it should report a message$/ do
  Then "it should report 1 message"
end

Then /^it should report (\d+) messages?$/ do |n|
  Informer.messages.size.should eql(n.to_i)
end
