# ActiveRecord model of MSF SpectrumHeader
#
#   Example:
#
#   SpectrumHeader.find(1)
#   SpectrumHeader.first.mass
class SpectrumHeader < ActiveRecord::Base
  def self.table_name
    :SpectrumHeaders
  end
  def self.primary_key
    :SpectrumID
  end
  def spectrum_id
    self.SpectrumID
  end
  def mass_peak_id
    self.MassPeakID
  end
  def scan_event_id
    self.ScanEventID
  end
  def last_scan
    self.LastScan
  end
  def first_scan
    self.FirstScan
  end
  def retention_time
    self.RetentionTime
  end
  def hidden
    self.Hidden
  end
  def scan_numbers
    self.ScanNumbers
  end
  def charge
    self.Charge
  end
  def mass
    self.Mass
  end
  def creating_processing_node_number
    self.CreatingProcessingNodeNumber
  end
  def unique_spectrum_id
    self.UniqueSpectrumID
  end
  def title
    self.mass_peak.file_info.file_basename + "_" + self.SpectrumID.to_s + "_" + self.FirstScan.to_s + "_" + self.Charge.to_s
  end
  # associations
  belongs_to :spectrum,
    :foreign_key => "SpectrumID"
  belongs_to :mass_peak,
    :foreign_key => "MassPeakID"
  belongs_to :scan_event,
    :foreign_key => "ScanEventID"
  belongs_to :unique_spectrum,
    :class_name => "Spectrum",
    :foreign_key => "UniqueSpectrumID"
end
