# ActiveRecord model of MSF FileInfo
#
#		Example:
#
#   FileInfo.find(1)
#		FileInfo.first.file_name
#   FileInfo.first.chromatograms.first.trace_type
class FileInfo < ActiveRecord::Base
  def self.table_name
    :FileInfos
  end
  def self.primary_key
    :FileID
  end
  def file_id
    self.FileID
  end
  def file_name
    self.FileName
  end
  def file_basename
    path = self.FileName.gsub("\\","/")
    File.basename(path,File.extname(path))
  end
  def file_time
    self.FileTime
  end
  def file_size
    self.FileSize
  end
  def physical_file_name
    self.PhysicalFileName
  end
  def file_type
    self.FileType
  end
  has_many :chromatograms,
    :foreign_key => "FileID"
  has_many :mass_peaks,
    :foreign_key => "FileID"
end
