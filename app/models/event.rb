class Event < ActiveRecord::Base

  belongs_to :manager, :class_name=>"User"
  belongs_to :deputy, :class_name=>"User"
  
  attr_accessible :name, :order_end, :term_end, :term_start
end
