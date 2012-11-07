require 'active_record'

# This class establishes an ActiveRecord connection to an MSF file (sqlite3 database) at the specified path.
class MSF

  # filesystem PATH to an MSF file
  attr_accessor :path
  # the resulting ActiveRecord::Base.connection
  attr_reader :connection

  # * assign any passed attributes
  # * define connection
  #
  #		Example:
	#
	#		msf = MSF.new({
  #   :path => './my.msf'
	#		})
  #   msf.connection.tables
  #   msf.connection.disconnect!
  #   msf.reconnect
  def initialize(attributes={})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
    @connection = ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => @path).connection
  end
  # reconnect to the MSF file (sqlite3 database)
  def reconnect
    @connection = ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => @path).connection
  end
end
