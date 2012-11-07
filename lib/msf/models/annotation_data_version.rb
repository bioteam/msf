# ActiveRecord model of MSF AnnotationDataVersion
#
#		Example:
#
#   AnnotationDataVersion.find(1)
#		AnnotationDataVersion.first.name
class AnnotationDataVersion < ActiveRecord::Base
  def self.table_name
    :AnnotationDataVersion
  end
  def self.primary_key
    :PcDataVersion
  end
  def pc_data_version
    self.PcDataVersion
  end
  def pc_data_release
    self.PcDataRelease
  end
end
