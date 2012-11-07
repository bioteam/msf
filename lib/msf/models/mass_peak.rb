# ActiveRecord model of MSF MassPeak
#
#   Example:
#
#   MassPeak.find(1)
#   MassPeak.first.charge
class MassPeak < ActiveRecord::Base
  def self.table_name
    :MassPeaks
  end
  def self.primary_key
    :MassPeakID
  end
  def mass_peak_id
    self.MassPeakID
  end
  def charge
    self.Charge
  end
  def intensity
    self.Intensity
  end
  def mass
    self.Mass
  end
  def scan_numbers
    self.ScanNumbers
  end
  def file_id
    self.FileID
  end
  belongs_to :file_info,
    :foreign_key => "FileID"
  has_one :spectrum_header,
    :foreign_key => "MassPeakID"
end
