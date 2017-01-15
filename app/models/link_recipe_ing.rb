class LinkRecipeIng < ActiveRecord::Base
  
  belongs_to :recipe
  belongs_to :chocolate
  belongs_to :dairy

  validates :recipe_id, uniqueness: true, if: :cleared?
 
  def cleared?
    selected = LinkRecipeIng.where(:recipe_id => self.recipe_id)
    selected.each do |e|
      e.destroy
    end
    
    return true
  end
  
  
end