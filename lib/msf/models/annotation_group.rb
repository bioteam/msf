# ActiveRecord model of MSF AnnotationGroup
#
#		Example:
#
#   AnnotationGroup.find(1)
#		AnnotationGroup.first.name
class AnnotationGroup < ActiveRecord::Base
  def self.table_name
    :AnnotationGroups
  end
  def self.primary_key
    [:AnnotationGroupId, :DatasetId]
  end
  def annotation_group_id
    self.AnnotationGroupId
  end
  def dataset_id
    self.DatasetId
  end
  def description
    self.Description
  end
  def position
    self.Position
  end
  def color_r
    self.ColorR
  end
  def color_g
    self.ColorG
  end
  def color_b
    self.ColorB
  end
  def group_definition
    self.GroupDefinition
  end
end
