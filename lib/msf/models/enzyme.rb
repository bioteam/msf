# ActiveRecord model of MSF Enzyme
#
#		Example:
#
#   Enzyme.find(1)
#		Enzyme.all.first.name
class Enzyme < ActiveRecord::Base
  def self.table_name
    :Enzymes
  end
  def self.primary_key
    :EnzymeID
  end
  def enzyme_id
    self.EnzymeID
  end
  def name
    self.Name
  end
  def abbreviation
    self.Abbreviation
  end
  def seperator
    self.Seperator
  end
  def non_seperator
    self.NonSeperator
  end
  def offset
    self.Offset
  end
end
