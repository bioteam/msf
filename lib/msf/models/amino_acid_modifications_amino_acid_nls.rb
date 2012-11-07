# ActiveRecord model of MSF AminoAcidModificationsAminoAcidNLs
# Join table for AminoAcid and AminoAcidModificationsNeutralLosses HABTM
#
#		Example:
#
#		AminoAcidModificationsAminoAcidNLs.first
class AminoAcidModificationsAminoAcidNLs < ActiveRecord::Base
  def self.table_name
    :AminoAcidModificationsAminoAcidsNL
  end
  def self.primary_key
    [:AminoAcidModificationID, :AminoAcidID, :NeutralLossID]
  end
  def amino_acid_modification_id
    self.AminoAcidModificationID
  end
  def amino_acid_id
    self.AminoAcidID
  end
  def neutral_loss_id
    self.NeutralLossID
  end
end
