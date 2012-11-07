# ActiveRecord model of MSF Spectrum
#
#   Example:
#
#   Spectrum.find(1)
#   Spectrum.first.spectrum
class Spectrum < ActiveRecord::Base
  def self.table_name
    :Spectra
  end
  def self.primary_key
    :UniqueSpectrumID
  end
  def unique_spectrum_id
    self.UniqueSpectrumID
  end
  def spectrum
    self.Spectrum
  end
  def spectrum_hash_code
    self.SpectrumHashCode
  end
  has_many :peptides,
    :foreign_key => "SpectrumID",
    :primary_key => "UniqueSpectrumID"
  has_one :spectrum_header,
    :foreign_key => "SpectrumID"
  has_one :spectrum_score,
    :foreign_key => "SpectrumID"
  has_one :search_spectrum,
    :class_name => 'ReporterIonQuanResultsSearchSpectra',
    :foreign_key => "SearchSpectrumID",
    :primary_key => "UniqueSpectrumID"
end
