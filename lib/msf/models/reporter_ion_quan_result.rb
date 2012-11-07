# ActiveRecord model of MSF ReporterIonQuanResult
#
#		Example:
#
#   ReporterIonQuanResult.find(1)
#		ReporterIonQuanResult.first.reporter_ion_quan_results_search_spectra
class ReporterIonQuanResult < ActiveRecord::Base
  def self.table_name
    :ReporterIonQuanResults
  end
  def self.primary_key
    [:ProcessingNodeNumber, :QuanChannelID, :SpectrumID]
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
  def quan_channel_id
    self.QuanChannelID
  end
  def spectrum_id
    self.SpectrumID
  end
  def mass
    self.Mass
  end
  def height
    self.Height
  end
  belongs_to :reporter_ion_quan_results_search_spectra,
    :foreign_key => 'SpectrumID'
end
