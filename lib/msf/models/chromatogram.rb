# ActiveRecord model of MSF Chromatogram
#
#		Example:
#
#   Chromatogram.find(1)
#		Chromatogram.all.first.trace_type
#   Chromatogram.first.file_infos.file_name
class Chromatogram < ActiveRecord::Base
  def self.table_name
    :Chromatograms
  end
  def self.primary_key
    [:FileID, :TraceType]
  end
  def file_id
    self.FileID
  end
  def trace_type
    self.TraceType
  end
  def chromatogram
    self.Chromatogram
  end
  belongs_to :file_info,
    :foreign_key => "FileID"
end
