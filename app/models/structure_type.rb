class StructureType < ActiveRecord::Base
  attr_accessible :structure_type
  has_and_belongs_to_many :sites
end
