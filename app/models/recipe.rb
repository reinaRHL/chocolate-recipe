class Recipe < ActiveRecord::Base
  validates :title, presence: true
  has_many :other_ingredients, :dependent => :destroy
  accepts_nested_attributes_for :other_ingredients, :reject_if => lambda { |a| a[:name].blank? }
end
