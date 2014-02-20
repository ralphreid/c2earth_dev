class Project < ActiveRecord::Base
  attr_accessible :description, :name, :name_alternate, :number, :prefix_id
end
