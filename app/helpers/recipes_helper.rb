module RecipesHelper
    
    def total_amount(chocolate_amount, dairy_amount, puree_amount, liqueur_amount, glucose_amount, butter_amount)

        if puree_amount == nil
            puree_amount = 0.0
        end
        
        if liqueur_amount == nil
            liqueur_amount = 0.0
        end
        
        if butter_amount == nil
            butter_amount = 0.0
        end
        
        if glucose_amount == nil
            glucose_amount = 0.0
        end
    
        total = chocolate_amount + dairy_amount + puree_amount + liqueur_amount + glucose_amount + butter_amount
        return total
    end
    
    def tooMuchCream(dairy_amount, chocolate_amount)
        if dairy_amount/chocolate_amount > 0.7
            return true
        else
            return false
        end
    end
    
    def toolittleCream(dairy_amount, chocolate_amount)
        if dairy_amount/chocolate_amount < 0.4
            return true
        else
            return false
        end
    end
    
    def dark_liquidOK(dairy_amount, liqueur_amount, puree_amount, chocolate_amount)
        if liqueur_amount == nil
            liqueur_amount = 0.0
        end
        
        if puree_amount == nil
            puree_amount = 0.0
        end
        
        if 1.8 < chocolate_amount/(dairy_amount+liqueur_amount+puree_amount) and chocolate_amount/(dairy_amount+liqueur_amount+puree_amount) < 2.2
            return true
        else
            return false
        end
    end
    
    def milkwhite_liquidOK(dairy_amount, liqueur_amount, puree_amount, chocolate_amount)
        if liqueur_amount == nil
            liqueur_amount = 0.0
        end
        
        if puree_amount == nil
            puree_amount = 0.0
        end
        
        if 2.3 < chocolate_amount/(dairy_amount+liqueur_amount+puree_amount) and chocolate_amount/(dairy_amount+liqueur_amount+puree_amount) < 2.7
            return true
        else
            return false
        end
    end
    
    
    def fatOkForWhite(totalFat, total)
        
        if totalFat/total > 0.29
            return false
        else
            return true
        end
    end
    
    def fatOkFormilkdark(totalFat, total)
        if totalFat/total > 0.33
            return false
        else
            return true
        end
    end
    
end
