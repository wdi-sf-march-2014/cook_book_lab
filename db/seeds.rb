

# TODO: Create your own seed data!

ingredients = Ingredient.create([
  {name: "Butter", brand: "kerrygold", image: "http://www.kerrygold.com/images/sized/images/uploads/KG_Pure_Irish_Butter-604x414.png"},

  {name: "Flour", brand: "King Arthur", image: "http://ninecooks.typepad.com/.a/6a00d83451fa5069e20163004c4fc5970d-800wi"},

  {name: "Salt", brand: "Morton", image: "http://www.tbotech.com/images/salt-container-hidden-safe.jpg"},

  {name: "Baking Soda", brand: "Arm & Hammer", image: "http://www.reef2reef.com/blog/wp-content/uploads/2013/12/baking-soda-COMP-1065242.jpg"},

  {name: "Chocolate", brand: "Nestle", image: "http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/13/05/13055859.jpg"},

  {name: "Milk", brand: "Clover", image: "http://cloverstornetta.com/wp-content/uploads/2011/08/Clover-Milk-2-Percent1.png"}

   ])

recipes = Recipe.create([
	{name: "Cake", course: "Dessert", cooktime: 35, servingsize: 2, instructions: "Combine ingredients and place in oven."}

	])