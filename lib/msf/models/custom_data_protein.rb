# ActiveRecord model of MSF CustomDataProtein
#
#		Example:
#
#   CustomDataProtein.find(1)
#		CustomDataProtein.first.field_value
class CustomDataProtein < ActiveRecord::Base
  def self.table_name
    :CustomDataProteins
  end
  def self.primary_key
    [:FieldID, :ProteinID]
  end
  def field_id
    self.FieldID
  end
  def protein_id
    self.ProteinID
  end
  def field_value
    self.FieldValue
  end
  belongs_to :custom_data_field,
    :foreign_key => "FieldID"
end
