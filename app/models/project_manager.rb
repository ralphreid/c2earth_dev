class ProjectManager < ActiveRecord::Base
  attr_accessible :name
  has_many :phases
end
