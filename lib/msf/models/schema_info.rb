# ActiveRecord model of MSF SchemaInfo
#
#		Example:
#
#   SchemaInfo.find(1)
#		SchemaInfo.first.software_version
class SchemaInfo < ActiveRecord::Base
  def self.table_name
    :SchemaInfo
  end
  def self.primary_key
    :Version
  end
  def version
    self.Version
  end
  def kind
    self.Kind
  end
  def date
    self.Date
  end
  def software_version
    self.SoftwareVersion
  end
  def comment
    self.Comment
  end
end
