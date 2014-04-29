

# TODO: Create your own seed data!

recipe = Recipe.create(:name => 'omelets', :course => 'breakfast', 
	:cooktime => '5 minutes', :servingsize => '2', 
	:instructions => 'fry') 

ingredient = Ingredient.create(:name => 'egg', :brand => 'grade A')

# omelets = Recipe.find_by(name: "omelets")

# omelets.ingredient_quantities.create(quantity: '4')