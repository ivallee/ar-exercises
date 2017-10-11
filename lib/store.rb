class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }
  validates :annual_revenue, numericality: { greater_than: 0 }
  before_destroy :destroy_store

  private
  def destroy_store
    return true if employees.count == 0
    errors.add :base, "Cannot deletestore with employees"
    # or errors.add_to_base in Rails 2
    false
    # Rails 5
    throw(:abort)
  end

end