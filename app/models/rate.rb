class Rate < ActiveRecord::Base
  validates :title, uniqueness: true
end
