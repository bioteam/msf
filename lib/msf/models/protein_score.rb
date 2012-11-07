# ActiveRecord model of MSF ProteinScore
#
#		Example:
#
#		ProteinScore.first.protein_score
class ProteinScore < ActiveRecord::Base
  def self.table_name
    :ProteinScores
  end
  def self.primary_key
    [:ProcessingNodeNumber, :ProteinID]
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
  def protein_id
    self.ProteinID
  end
  def protein_identification_group_id
    self.ProteinIdentificationGroupID
  end
  def protein_score
    self.ProteinScore
  end
  def coverage
    self.Coverage
  end
  belongs_to :protein,
    :foreign_key => "ProteinID"
  belongs_to :protein_identification_group,
    :foreign_key => "ProteinIdentificationGroupID"
  belongs_to :processing_node,
    :foreign_key => "ProcessingNodeNumber"
end
