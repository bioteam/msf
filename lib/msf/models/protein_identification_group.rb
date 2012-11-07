# ActiveRecord model of MSF ProteinIdentificationGroup
#
#		Example:
#
#		ProteinIdentificationGroup.first
class ProteinIdentificationGroup < ActiveRecord::Base
  def self.table_name
    :ProteinIdentificationGroups
  end
  def self.primary_key
    [:ProteinIdentificationGroupId, :ProcessingNodeNumber]
  end
  def protein_identification_group_id
    self.ProteinIdentificationGroupId
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
end
