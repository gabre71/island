class Material < ActiveRecord::Base
  
  belongs_to :material_group
  belongs_to :material_type
  belongs_to :unit
  
  attr_accessible :name, :quantity, :material_group_id, :material_type_id, :unit_id
end
