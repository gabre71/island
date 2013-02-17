	class UserDepartment < ActiveRecord::Base
  belongs_to :user
  belongs_to :department
  
  attr_accessible :user, :department
end
