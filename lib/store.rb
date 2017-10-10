class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length { minimum: 3, too_short: "%{count} characters is the maximum allowed" }
end
