class Employee < ActiveRecord::Base

  belongs_to :store
  validates :first_name, :last_name, presence: true
  # validates :password, presence: true
  validates :hourly_rate, numericality: { only_integer: true }
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true
  before_save :generate_password
  
  private
   def generate_password
    self.password = SecureRandom.hex(8)
   end

end
