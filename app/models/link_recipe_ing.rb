class LinkRecipeIng < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :chocolate
  
end