class Recipe < ActiveRecord::Base
  validates :title, :description, presence: true
  
  
  has_many :link_recipe_ings , dependent: :destroy
  has_many :chocolates, through: :link_recipe_ings
  
  has_many :dairies, through: :link_recipe_ings
  has_many :purees, through: :link_recipe_ings
  has_many :liqueurs, through: :link_recipe_ings
  
  accepts_nested_attributes_for :link_recipe_ings
  #we need this for nested form
  has_many :other_ingredients , dependent: :destroy
  accepts_nested_attributes_for :other_ingredients, allow_destroy: true
  
  
  belongs_to :user
end
