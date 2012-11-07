# ActiveRecord model of MSF Protein
#
#   Example:
#
#   Protein.find(1)
#   Protein.first.sequence
#   Protein.first.protein_score
#   Protein.first.protein_annotation
#   Protein.first.peptides
class Protein < ActiveRecord::Base
  def self.table_name
    :Proteins
  end
  def self.primary_key
    :ProteinID
  end
  def protein_id
    self.ProteinID
  end
  def sequence
    self.Sequence
  end
  def sequence_hash_code
    self.SequenceHashCode
  end
  def is_master_protein
    self.IsMasterProtein
  end
  has_one :protein_score,
    :foreign_key => "ProteinID"
  has_one :protein_annotation,
    :foreign_key => "ProteinID"
  # HABTM join table for peptides
  has_many :peptides_proteins,
    :class_name => 'PeptidesProteins',
    :foreign_key => "ProteinID"
  has_many :peptides, :through => :peptides_proteins
end
