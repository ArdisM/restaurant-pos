class Employee < ActiveRecord::Base
  has_many :parties
  has_secure_password
end
