# ActiveRecord model of MSF AnnotationType
#
#		Example:
#
#   AnnotationType.find(1)
#		AnnotationType.first.name
class AnnotationType < ActiveRecord::Base
  def self.table_name
    :AnnotationTypes
  end
  def self.primary_key
    :AnnotationTypeId
  end
  def annotation_type_id
    self.AnnotationTypeId
  end
  def name
    self.Name
  end
  def description
    self.Description
  end
end
