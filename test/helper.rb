$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rubygems'
require 'test/unit'
require 'shoulda'

gem 'activesupport', '2.3.5'
require 'active_support'

gem 'griddle', '0.0.6'
require 'griddle'

require 'mongo'

require 'griddleware'

TEST_DB = 'griddleware-test' unless Object.const_defined?("TEST_DB")
 
db = Mongo::Connection.new.db(TEST_DB)

Griddle.database = db

class Test::Unit::TestCase
  
  def self.all_models
    Dir[File.dirname(__FILE__) + "/fixtures/*.rb"].each do |f|
      require File.expand_path(f)
    end
  end
  
  def teardown
    Mongo::Connection.new.drop_database(TEST_DB)
  end
 
  # Make sure that each test case has a teardown
  # method to clear the db after each test.
  def inherited(base)
    base.define_method teardown do
      super
    end
  end
end