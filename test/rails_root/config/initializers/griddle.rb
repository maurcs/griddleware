require 'griddle'
require 'mongo'

Griddle.database = Mongo::Connection.new.db('griddleware-test')