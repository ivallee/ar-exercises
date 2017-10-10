class Employee < ActiveRecord::Base
  belongs_to :store,
  validates :fist_name, presence: true,
  
end
