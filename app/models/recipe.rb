class Recipe < ActiveRecord::Base
  validates :title, :description, presence: true
  has_many :other_ingredients, :dependent => :destroy
  has_many :chocolates, :dependent => :destroy
  has_many :dairies, :dependent => :destroy
  has_many :purees, :dependent => :destroy
  has_many :liqueurs, :dependent => :destroy
  
  #we need this for nested form
  accepts_nested_attributes_for :chocolates, :dairies, :liqueurs, :purees, :other_ingredients, allow_destroy: true
  
  belongs_to :user
end
