ingredients = Ingredient.create([
  {name: "succulent chicken feet", brand: "huang's", image: ""},
  {name: "hot sauce", brand: "sweet baby ray's, the sauce is the boss", image: ""},
  {name: "broth", brand: "aldi", image: ""}
  ])

recipe = Recipe.create([
  {name: "Sandwich", course: "lunch", cooktime: 10, servingsize: 1, instructions:"make it"},
  {name: "Muffin", course: "breakfast", cooktime: 30, servingsize: 4, instructions: "bake it"},
  {name: "Fried Chicken", course: "dinner", cooktime: 60, servingsize: 8, instructions: "shake it"}
  ])



# TODO: Create your own seed data!