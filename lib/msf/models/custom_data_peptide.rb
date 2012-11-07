# ActiveRecord model of MSF CustomDataPeptide
#
#		Example:
#
#   CustomDataPeptide.find(1)
#		CustomDataPeptide.first.field_value
class CustomDataPeptide < ActiveRecord::Base
  def self.table_name
    :CustomDataPeptides
  end
  def self.primary_key
    [:FieldID, :PeptideID]
  end
  def field_id
    self.FieldID
  end
  def peptide_id
    self.PeptideID
  end
  def field_value
    self.FieldValue
  end
  belongs_to :custom_data_field,
    :foreign_key => "FieldID"
end
