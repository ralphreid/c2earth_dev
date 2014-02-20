class StakeholderType < ActiveRecord::Base
  attr_accessible :stakeholder_type
  has_and_belongs_to_many :stakeholders
end
