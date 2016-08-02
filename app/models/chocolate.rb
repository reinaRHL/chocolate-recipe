class Chocolate < ActiveRecord::Base
  has_many :link_recipe_ings
  has_many :recipes, through: :link_recipe_ings
  accepts_nested_attributes_for :link_recipe_ings
end