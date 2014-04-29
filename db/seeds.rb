recipes = Recipe.create([
	{name: "Fried Chicken", course: "Dinner", cooktime: 90, servingsize: 4, instructions: "Cook the chicken"},
	{name: "Eggs", course: "Breakfast", cooktime: 10, servingsize: 2, instructions: "Benedict them"},
	{name: "Pepper crusted steak", course: "Lunch", cooktime: 50, servingsize: 2, instructions: "Load on the pepper"},
	{name: "Salad", course: "Lunch", cooktime: 10, servingsize: 4, instructions: "Salad"}
	])

ingredients = Ingredient.create([
	{name: "Salt", brand: "Sea"},
	{name: "Pepper", brand: "Bell"},	
	{name: "Chicken", brand: "Fosters"}
	])
# TODO: Create your own seed data!