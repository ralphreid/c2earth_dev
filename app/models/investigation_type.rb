class InvestigationType < ActiveRecord::Base
  attr_accessible :investigation_type
  has_many :phases
end
