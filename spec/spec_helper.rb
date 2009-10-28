require 'rubygems'
require 'spork'

Spork.prefork do
  require 'spec/autorun'

  Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

  Spec::Runner.configure do |config|
    require 'lib/failure_sort'
  end
end

Spork.each_run do
  # nothing
end