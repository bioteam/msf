# ActiveRecord model of MSF AminoAcidModification
#
#		Example:
#
#   AminoAcidModification.find(1)
#		AminoAcidModification.first.modification_name
#   AminoAcidModification.first.amino_acids.first.amino_acid_name
class AminoAcidModification  < ActiveRecord::Base
  def self.table_name
    :AminoAcidModifications
  end
  def self.primary_key
    :AminoAcidModificationID
  end
  def amino_acid_modification_id
    self.AminoAcidModificationID
  end
  def modification_name
    self.ModificationName
  end
  def delta_mass
    self.DeltaMass
  end
  def substitution
    self.Substitution
  end
  def leaving_group
    self.LeavingGroup
  end
  def abbreviation
    self.Abbreviation
  end
  def position_type
    self.PositionType
  end
  def is_active
    self.IsActive
  end
  def delta_average_mass
    self.DeltaAverageMass
  end
  def unimod_accession
    self.UnimodAccession
  end
  def is_substitution
    self.IsSubstitution
  end
  # associations
  # join table for amino_acid
  has_one :amino_acid_modification_amino_acid,
    :class_name => 'AminoAcidModificationsAminoAcids',
    :foreign_key => "AminoAcidModificationID"
  has_one :amino_acid, :through => :amino_acid_modification_amino_acid
  
end
