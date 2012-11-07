# ActiveRecord model of MSF SpectrumScore
#
#		Example:
#
#		SpectrumScore.first.protein_score
class SpectrumScore < ActiveRecord::Base
  def self.table_name
    :SpectrumScores
  end
  def self.primary_key
    [:ProcessingNodeNumber, :SpectrumID]
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
  def spectrum_id
    self.SpectrumID
  end
  def score
    self.Score
  end
  belongs_to :spectrum,
    :foreign_key => "SpectrumID"
end
