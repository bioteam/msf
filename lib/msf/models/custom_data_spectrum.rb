# ActiveRecord model of MSF CustomDataSpectrum
#
#		Example:
#
#   CustomDataSpectrum.find(1)
#		CustomDataSpectrum.first.field_value
class CustomDataSpectrum < ActiveRecord::Base
  def self.table_name
    :CustomDataSpectra
  end
  def self.primary_key
    [:FieldID, :SpectrumID]
  end
  def field_id
    self.FieldID
  end
  def spectrum_id
    self.SpectrumID
  end
  def field_value
    self.FieldValue
  end
  belongs_to :custom_data_field,
    :foreign_key => "FieldID"
end
