class Gallery < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy
  accepts_nested_attributes_for :pictures, allow_destroy: true
  
  def display_name
    "#{title}"
  end
end
