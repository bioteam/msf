# ActiveRecord model of MSF ProcessingNode
#
#		Example:
#
#   ProcessingNode.find(1)
#		ProcessingNode.first.node_name
#   ProcessingNode.find_by_NodeName('Mascot').peptides
#   ProcessingNode.find_by_NodeName('Mascot').protein_scores
#   ProcessingNode.find_by_NodeName('Mascot').spectrum_scores
class ProcessingNode < ActiveRecord::Base
  def self.table_name
    :ProcessingNodes
  end
  def self.primary_key
    :ProcessingNodeNumber
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
  def processing_node_id
    self.ProcessingNodeID
  end
  def processing_node_parent_number
    self.ProcessingNodeParentNumber
  end
  def node_name
    self.NodeName
  end
  def friendly_name
    self.FriendlyName
  end
  def major_version
    self.MajorVersion
  end
  def minor_version
    self.MinorVersion
  end
  def node_comment
    self.NodeComment
  end
  def node_guid
    self.NodeGUID
  end
  def processing_node_state
    self.ProcessingNodeState
  end
  def self.isobaric_tags
    @isobaric_tags ||= {
      '113' => {'channel_id' => 1, 'mono_mass' => 113.107873, 'average_mass' => 113.1808},
      '114' => {'channel_id' => 2, 'mono_mass' => 114.111228, 'average_mass' => 114.1735},
      '115' => {'channel_id' => 3, 'mono_mass' => 115.108263, 'average_mass' => 115.1669},
      '116' => {'channel_id' => 4, 'mono_mass' => 116.111618, 'average_mass' => 116.1595},
      '117' => {'channel_id' => 5, 'mono_mass' => 117.114973, 'average_mass' => 117.1522},
      '118' => {'channel_id' => 6, 'mono_mass' => 118.112008, 'average_mass' => 118.1456},
      '119' => {'channel_id' => 7, 'mono_mass' => 119.115363, 'average_mass' => 119.1383},
      '121' => {'channel_id' => 8, 'mono_mass' => 121.122072, 'average_mass' => 121.1236},
    }
  end
  has_many :peptides,
    :foreign_key => 'ProcessingNodeNumber'
  has_many :protein_scores,
    :foreign_key => 'ProcessingNodeNumber'
  has_many :spectrum_scores,
    :foreign_key => 'ProcessingNodeNumber'
end
