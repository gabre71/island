class MaterialType < ActiveRecord::Base
	has_many :materials
  attr_accessible :name
end
