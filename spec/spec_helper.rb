# FIXME: We should modify the load path here.
$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'mongoid'
require 'trackoid'
require 'rspec'
require 'pry'

RSpec.configure do |config|
  config.before(:suite) do
  	Mongoid.load!(File.expand_path(File.dirname(__FILE__) + "/../config/mongoid.yml"), :test)
  end
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end

  config.after(:each) do
    Mongoid::Config.purge!
  end
end
