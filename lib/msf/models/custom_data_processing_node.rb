# ActiveRecord model of MSF CustomDataProcessingNode
#
#		Example:
#
#   CustomDataProcessingNode.find(1)
#		CustomDataProcessingNode.first.field_value
class CustomDataProcessingNode < ActiveRecord::Base
  def self.table_name
    :CustomDataProcessingNodes
  end
  def self.primary_key
    [:FieldID, :ProcessingNodeNumber]
  end
  def field_id
    self.FieldID
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
  def field_value
    self.FieldValue
  end
  belongs_to :custom_data_field,
    :foreign_key => "FieldID"
end
