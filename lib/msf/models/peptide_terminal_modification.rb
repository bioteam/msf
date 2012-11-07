# ActiveRecord model of MSF PeptideTerminalModification
#
#		Example:
#
#		PeptideTerminalModification.first
class PeptideTerminalModification < ActiveRecord::Base
  def self.table_name
    :PeptidesTerminalModifications
  end
  def self.primary_key
    [:ProcessingNodeNumber, :PeptideID, :TerminalModificationID]
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
  def peptide_id
    self.PeptideID
  end
  def terminal_modification_id
    self.TerminalModificationID
  end
  belongs_to :peptide,
    :foreign_key => "PeptideID"
  belongs_to :terminal_modification,
    :class_name => 'AminoAcidModification',
    :foreign_key => 'TerminalModificationID'  
  belongs_to :processing_node,
    :foreign_key => 'ProcessingNodeNumber'  
end
