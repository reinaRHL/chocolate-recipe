class LinkRecipeIng < ActiveRecord::Base
  
  belongs_to :recipe
  belongs_to :chocolate
  belongs_to :dairy
  belongs_to :puree
  belongs_to :liqueur

  validates :recipe_id, uniqueness: true, if: :cleared?
 
  def cleared?
    selected = LinkRecipeIng.where(:recipe_id => self.recipe_id)
    selected.each do |e|
      e.destroy
    end
    
    return true
  end
  
  validates :chocolate_id, :dairy_id, presence: true
  
end