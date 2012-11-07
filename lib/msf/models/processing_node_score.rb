# ActiveRecord model of MSF ProcessingNodeScore
#
#		Example:
#
#		ProcessingNodeScore.first.score_name
class ProcessingNodeScore < ActiveRecord::Base
  def self.table_name
    :ProcessingNodeScores
  end
  def self.primary_key
    :ScoreID
  end
  def processing_node_id
    self.ProcessingNodeID
  end
  def score_id
    self.ScoreID
  end
  def score_name
    self.ScoreName
  end
  def friendly_name
    self.FriendlyName
  end
  def description
    self.Description
  end
  def format_string
    self.FormatString
  end
  def score_category
    self.ScoreCategory
  end
  def hidden
    self.Hidden
  end
  def is_main_score
    self.IsMainScore
  end
  def score_guid
    self.ScoreGUID
  end
  has_many :processing_nodes,
    :foreign_key => "ProcessingNodeID"
end
