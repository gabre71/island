class Material < ActiveRecord::Base
  
  belongs_to :material_group
  belongs_to :material_type
  belongs_to :unit
  
  attr_accessible :name, :quantity
end
