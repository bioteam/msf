# ActiveRecord model of MSF ProteinAnnotation
#
#		Example:
#
#		ProteinAnnotation.first.description
class ProteinAnnotation < ActiveRecord::Base
  def self.table_name
    :ProteinAnnotations
  end
  def self.primary_key
    :ProteinAnnotationID
  end
  def protein_annotation_id
    self.ProteinAnnotationID
  end
  def protein_id
    self.ProteinID
  end
  def description_hash_code
    self.DescriptionHashCode
  end
  def description
    self.Description
  end
  def taxonomy_id
    self.TaxonomyID
  end
  def accession
    self.description.split('|')[1]
  end
  belongs_to :protein,
    :foreign_key => "ProteinID"
  belongs_to :taxonomy,
    :foreign_key => "TaxonomyID"
end
