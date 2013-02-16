class Department < ActiveRecord::Base

  belongs_to :head, :class_name=>"User"
  belongs_to :deputy, :class_name=>"User"

  has_many :user_departments       
  has_many :users, :through => :user_departments         

  attr_accessible :name, :head_id, :deputy_id
end
