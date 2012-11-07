# ActiveRecord model of MSF PeptideScore
#
#		Example:
#
#		PeptideScore.first.score
class PeptideScore < ActiveRecord::Base
  def self.table_name
    :PeptideScores
  end
  def self.primary_key
    [:ProcessingNodeNumber, :PeptideID, :ScoreID]
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
  def peptide_id
    self.PeptideID
  end
  def score_id
    self.ScoreID
  end
  def processing_node_id
    self.ProcessingNodeID
  end
  def score_value
    self.ScoreValue
  end
  belongs_to :peptide,
    :foreign_key => "PeptideID"
  belongs_to :processing_node,
    :foreign_key => "ProcessingNodeNumber"
  belongs_to :processing_node_score,
    :foreign_key => "ScoreID"
end
