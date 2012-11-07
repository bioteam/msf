# ActiveRecord model of MSF PeptidesProteins
# Join table for Peptides and Proteins HABTM
#
#		Example:
#
#		PeptidesProteins.first
class PeptidesProteins < ActiveRecord::Base
  def self.table_name
    :PeptidesProteins
  end
  def self.primary_keys
    [:ProcessingNodeNumber, :PeptideID, :ProteinID]
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
  def peptide_id
    self.PeptideID
  end
  def protein_id
    self.ProteinID
  end
  belongs_to :protein,
    :foreign_key => 'ProteinID'
  belongs_to :peptide,
    :foreign_key => 'PeptideID'
end
