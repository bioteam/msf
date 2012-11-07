# ActiveRecord model of MSF TaxonomyName
#
#		Example:
#
#   TaxonomyName.find(1)
#   TaxonomyName.first.name
class TaxonomyName < ActiveRecord::Base
  def self.table_name
    :TaxonomyNames
  end
  def self.primary_key
    :TaxonomyID
  end
  def taxonomy_id
    self.TaxonomyID
  end
  def name
    self.Name
  end
  def name_category
    self.NameCategory
  end
  # associations
  belongs_to :taxonomy_names,
    :foreign_key => "TaxonomyID"
end
