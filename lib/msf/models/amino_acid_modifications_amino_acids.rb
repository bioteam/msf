# ActiveRecord model of MSF AminoAcidModificationsAminoAcids
# Join table for AminoAcid and AminoAcidModification HABTM
#
#		Example:
#
#		AminoAcidModificationsAminoAcids.first.classification
class AminoAcidModificationsAminoAcids < ActiveRecord::Base
  def self.table_name
    :AminoAcidModificationsAminoAcids
  end
  def self.primary_key
    [:AminoAcidModificationID, :AminoAcidID]
  end
  def amino_acid_modification_id
    self.AminoAcidModificationID
  end
  def amino_acid_id
    self.AminoAcidID
  end
  def classification
    self.Classification
  end
  belongs_to :amino_acid,
    :foreign_key => "AminoAcidID"
  belongs_to :amino_acid_modification,
    :foreign_key => "AminoAcidModificationID"
end
