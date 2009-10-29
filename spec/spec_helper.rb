$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'Informer'
require 'spec'
require 'spec/autorun'
require 'helpers/host_helpers'
require 'helpers/process_helpers'

Spec::Runner.configure do |config|
  
end
