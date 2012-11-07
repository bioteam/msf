# ActiveRecord model of MSF AminoAcidModificationsNeutralLoss
#
#		Example:
#
#   AminoAcidModificationNeutralLoss.find(1)
#		AminoAcidModificationNeutralLoss.first
#   AminoAcidModificationNeutralLoss.first.amino_acids.first.monoisotopic_mass
class AminoAcidModificationNeutralLoss  < ActiveRecord::Base
  def self.table_name
    :AminoAcidModificationsNeutralLosses
  end
  def self.primary_key
    :NeutralLossID
  end
  def neutral_loss_id
    self.NeutralLossID
  end
  def name
    self.Name
  end
  def monoisotopic_mass
    self.MonoisotopicMass
  end
  def average_mass
    self.AverageMass
  end
  has_and_belongs_to_many :amino_acids,
    :join_table => "AminoAcidModificationsAminoAcidsNL",
    :foreign_key => "NeutralLossID",
    :association_foreign_key => "AminoAcidID"
end
