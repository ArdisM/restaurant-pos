class Party < ActiveRecord::Base
  before_destroy :destroy_orders
  belongs_to :employee
  has_many :orders
  has_many :foods, through: :orders

  def total
    total = 0
    self.foods.each do |food|
      total += food.price
    end
    total
  end

def destroy_orders
  self.orders.destroy_all
end


end
