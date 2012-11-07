# ActiveRecord model of MSF Peptide
#
#   Example:
#
#   Peptide.find(1)
#   Peptide.first.sequence
#   Peptide.first.internal_modifications
#   Peptide.first.terminal_modification
class Peptide < ActiveRecord::Base
  def self.table_name
    :Peptides
  end
  def self.primary_key
    :PeptideID
  end
  def processing_node_number
    self.ProcessingNodeNumber
  end
  def peptide_id
    self.PeptideID
  end
  def spectrum_id
    self.SpectrumID
  end
  def total_ions_count
    self.TotalIonsCount
  end
  def matched_ions_count
    self.MatchedIonsCount
  end
  def confidence_level
    self.ConfidenceLevel
  end
  def search_engine_rank
    self.SearchEngineRank
  end
  def hidden
    self.Hidden
  end
  def sequence
    self.Sequence
  end
  def annotation
    self.Annotation
  end
  def unique_peptide_sequence_id
    self.UniquePeptideSequenceID
  end
  def missed_cleavages
    self.MissedCleavages
  end
  def theoretical_mass
    mass = 0
    charge = self.spectrum.spectrum_header.charge
    self.sequence.split(//).each do |aa|
      mass += AminoAcid.mass_for_one_letter_code(aa)
    end
    self.peptides_amino_acid_modifications.each do |modification|
      mass += modification.internal_modification.delta_mass
    end
    unless self.terminal_modification.nil?
      mass += self.terminal_modification.delta_mass
    end
    mass += 1.007825 + 15.994910 + 1.007825
    mass = (mass  + (charge * 1.007825)) / charge
  end
  def modified_sequence
    nterm = ''
    cterm = '-COOH'
    if self.terminal_modification.nil?
      nterm = "NH2-"
    else
      nterm = "#{self.terminal_modification.modification_name}-"
    end
    sequence_amino_acids = self.sequence.split(//)
    self.peptides_amino_acid_modifications.each do |modification|
      sequence_amino_acids[modification.position] = "#{sequence_amino_acids[modification.position]}<#{modification.internal_modification.modification_name}>"
    end
    nterm + sequence_amino_acids.join("") + cterm
  end
  def isobar_sequence
    nterm = ''
    unless self.terminal_modification.nil?
      nterm = "#{self.terminal_modification.modification_name}:"
    end
    sequence_amino_acids = self.sequence.split(//)
    isobar_amino_acids = []
    sequence_amino_acids.count.times { isobar_amino_acids << ":"}
    self.peptides_amino_acid_modifications.each do |modification|
      isobar_amino_acids[modification.position] = "#{modification.internal_modification.modification_name}_#{sequence_amino_acids[modification.position]}:"
    end
    nterm + isobar_amino_acids.join("")
  end
  belongs_to :spectrum,
    :foreign_key => "SpectrumID"
  has_one :peptide_score,
    :foreign_key => "PeptideID"
  # HABTM join table for proteins
  has_many :peptides_proteins,
    :class_name => 'PeptidesProteins',
    :foreign_key => "PeptideID"
  has_many :proteins, :through => :peptides_proteins
  # HABTM join table for internal_modifications
  has_many :peptides_amino_acid_modifications,
    :class_name => 'PeptidesAminoAcidModifications',
    :foreign_key => "PeptideID"
  has_many :internal_modifications, :through => :peptides_amino_acid_modifications,
    :class_name => 'AminoAcidModification',
    :foreign_key => 'PeptideID'
  # join table for terminal_modifications
  has_one :peptide_terminal_modification,
    :class_name => 'PeptideTerminalModification',
    :foreign_key => "PeptideID"
  has_one :terminal_modification, :through => :peptide_terminal_modification,
    :class_name => 'AminoAcidModification',
    :foreign_key => 'PeptideID'

end
