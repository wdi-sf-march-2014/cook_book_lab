recipes = Recipe.create([
	{name: "Fried Chicken", course: "Dinner", cooktime: 90, servingsize: 2, instructions: "Cook that chicken"},
	{name: "Eggs", course: "Breakfast", cooktime: 10, servingsize: 1, instructions: "Sunny-side up"},
	{name: "Pepper crusted steak", course: "Dinner", cooktime: 120, servingsize: 2, instructions: "Load on the pepper, add garlic"}
	])

ingredients = Ingredient.create([
	{name: "Salt", brand: "Sea Salt"},
	{name: "Pepper", brand: "Sea Pepper"},
	{name: "Garlic", brand: "Trader Joe's"}
	])