# ActiveRecord model of MSF AminoAcid
#
#		Example:
#
#   AminoAcid.find(1)
#		AminoAcid.first.monoisotopic_mass
#   AminoAcid.first.amino_acid_modifications.first.modification_name
class AminoAcid < ActiveRecord::Base
  def self.masses
    if @masses.nil?
      @masses = {}
      AminoAcid.select("OneLetterCode,MonoisotopicMass").where("OneLetterCode != ' '").map {|aa| @masses[aa.one_letter_code] =  aa.monoisotopic_mass}
    end
    @masses
  end
  def self.mass_for_one_letter_code(aa)
    self.masses[aa]
  end
  def self.table_name
    :AminoAcids
  end
  def self.primary_key
    :AminoAcidID
  end
  def amino_acid_id
    self.AminoAcidID
  end
  def amino_acid_name
    self.AminoAcidName
  end
  def one_letter_code
    self.OneLetterCode
  end
  def three_letter_code
    self.ThreeLetterCode
  end
  def monoisotopic_mass
    self.MonoisotopicMass
  end
  def average_mass
    self.AverageMass
  end
  def sum_formula
    self.SumFormula
  end
  # associations
  has_many :amino_acid_modifications,
    :class_name => 'AminoAcidModificationsAminoAcids',
    :foreign_key => "AminoAcidID"
end
