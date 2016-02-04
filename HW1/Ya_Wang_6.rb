class Dessert
 def initialize(name, calories)
   @name = name
   @calories = calories
 end


 def healthy?
   calories < 200
 end



 def delicious?
   true
 end
end



class JellyBean < Dessert
 def initialize(name, calories, flavor)
   @name = name
   @calories = calories
   @flavor = flavor
 end

 def delicious?
 	if @flavor == "black licorice" 
 		false
 	else
 		true
 	end
 end
end
