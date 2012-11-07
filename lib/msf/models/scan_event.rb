# ActiveRecord model of MSF ScanEvent
#
#		Example:
#
#   ScanEvent.find(1)
#		ScanEvent.first.scan_type
class ScanEvent < ActiveRecord::Base
  def self.table_name
    :ScanEvents
  end
  def self.primary_key
    :ScanEventID
  end
  def scan_event_id
    self.ScanEventID
  end
  def ms_level
    self.MSLevel
  end
  def polarity
    self.Polarity
  end
  def scan_type
    self.ScanType
  end
  def ionization
    self.Ionization
  end
  def mass_analyzer
    self.MassAnalyzer
  end
  def activation_type
    self.ActivationType
  end
  has_many :spectrum_headers,
    :foreign_key => "ScanEventID"
end
