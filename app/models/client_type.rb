class ClientType < ActiveRecord::Base
  attr_accessible :client_type
  belongs_to :phase
end
