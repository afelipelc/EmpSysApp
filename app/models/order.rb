class Order < ActiveRecord::Base
  belongs_to :employee
  has_many :orderdetails, :autosave => true
  accepts_nested_attributes_for :orderdetails
end
