# ActiveRecord model of MSF CustomDataField
#
#		Example:
#
#   CustomDataField.find(1)
#		CustomDataField.first.display_name
class CustomDataField < ActiveRecord::Base
  def self.table_name
    :CustomDataFields
  end
  def self.primary_key
    :FieldID
  end
  def field_id
    self.FieldID
  end
  def guid
    self.Guid
  end
  def display_name
    self.DisplayName
  end
  def source_node_number
    self.SourceNodeNumber
  end
  def target_node_number
    self.TargetNodeNumber
  end
  def data_type
    self.DataType
  end
  def data_target
    self.DataTarget
  end
  def version
    self.Version
  end
  def access_mode
    self.AccessMode
  end
  def visibility
    self.Visibility
  end
  def group_visibility
    self.GroupVisibility
  end
  def format
    self.Format
  end
  def plot_type
    self.PlotType
  end
  def data_purpose
    self.DataPurpose
  end
end
