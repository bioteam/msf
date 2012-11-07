# ActiveRecord model of MSF ReporterIonQuanResultsSearchSpectra
# Join table for ReporterIonQuanResult and Spectrum HABTM
#
#		Example:
#
#		ReporterIonQuanResultsSearchSpectra.first
class ReporterIonQuanResultsSearchSpectra < ActiveRecord::Base
  def self.table_name
    :ReporterIonQuanResultsSearchSpectra
  end
  def self.primary_key
    :SearchSpectrumID
    # [:ProcessingNodeNumber, :SpectrumID, :SearchSpectrumID]
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
  def spectrum_id
    self.SpectrumID
  end
  def search_spectrum_id
    self.SearchSpectrumID
  end
  has_many :reporter_ion_quan_results,
    :foreign_key => "SpectrumID",
    :primary_key => "SpectrumID"
  belongs_to :spectrum,
    :foreign_key => 'UniqueSpectrumID'
end
