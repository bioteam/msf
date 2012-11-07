# ActiveRecord model of MSF PeptidesAminoAcidModifications
# Join table for Peptides and AminoAcidModifications HABTM
#
#		Example:
#
#		PeptidesAminoAcidModifications.first.position
class PeptidesAminoAcidModifications < ActiveRecord::Base
  def self.table_name
    :PeptidesAminoAcidModifications
  end
  def self.primary_key
    # [:AminoAcidModificationID, :PeptideID]
    [:ProcessingNodeNumber, :PeptideID, :AminoAcidModificationID, :Position]
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
  def peptide_id
    self.PeptideID
  end
  def amino_acid_modification_id
    self.AminoAcidModificationID
  end
  def position
    self.Position
  end
  belongs_to :peptide,
    :foreign_key => 'PeptideID'
  belongs_to :internal_modification,
    :class_name => 'AminoAcidModification',
    :foreign_key => 'AminoAcidModificationID'  
end
