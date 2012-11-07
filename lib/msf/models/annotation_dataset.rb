# ActiveRecord model of MSF AnnotationDataset
#
#		Example:
#
#   AnnotationDataset.find(1)
#		AnnotationDataset.first.name
class AnnotationDataset < ActiveRecord::Base
  def self.table_name
    :AnnotationDataset
  end
  def self.primary_key
    :DatasetId
  end
  def dataset_id
    self.DatasetId
  end
  def name
    self.Name
  end
  def display_name
    self.DisplayName
  end
  def guid
    self.Guid
  end
  def description
    self.Description
  end
end
