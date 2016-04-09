class Rate < ActiveRecord::Base
  validates :price, :title, uniqueness: true
end
