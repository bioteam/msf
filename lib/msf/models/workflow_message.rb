# ActiveRecord model of MSF WorkflowMessage
#
#		Example:
#
#		WorkflowMessage.first.message
class WorkflowMessage < ActiveRecord::Base
  def self.table_name
    :WorkflowMessages
  end
  def self.primary_key
    :MessageID
  end
  def message_id
    self.MessageID
  end
  def processing_node_id
    self.ProcessingNodeID
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
  def time
    self.Time
  end
  def message_kind
    self.MessageKind
  end
  def message
    self.Message
  end
end
