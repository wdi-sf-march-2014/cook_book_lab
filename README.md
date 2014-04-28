Cookbook Lab
=============

## Objective

* Use a partial to render your form
* Practice db associations

## Instructions

You have been given a very basic recipe app.  Currently, it only allows users to create a recipe with information about the course (main, dessert, breakfast, etc), the cook time, the number of people served and the instructions.  For the lab, you will add the ability to specify ingredients.

### Phases

__Phase 1__
Add the RESTful routes to be able to create, read, update and delete ingredients.  A controller for ingredients has already been created in ```app/controllers/ingredients_controller.rb```.  You must create the ```Ingredient``` model and use it in the controller.  __The ingredients table should have the following__:
 
 * name
 * brand
 * image (BONUS)

Also, take a look at the views in ```app/views/recipes/```.  Notice how code in the edit page and in the create page is reused.  The code takes advantage of a [partial](http://guides.rubyonrails.org/layouts_and_rendering.html#using-partials).  Do the same with your ingredient views.

__Phase 2__
Add a table and a corresponding migration that associates ingredients with recipes.  A recipe has many ingredients through an ingredients_quantity through table.  Likewise,  an ingredient has many recipes through the same through table.  Adding this association also requires adding some attributes to the ```Recipe``` model and the ```Ingredient``` model.  

__Phase 3__
Add seed data.  The seed data should create a recipe and then create ingredients that are associated with that recipe.  On the show page of your recipe, display the ingredients associated with the receipt.  The ingredients should also list their quantities.  

__Phase 4__
(BONUS): When the user is creating a new receipe, he should be able to specify which ingredients he wants and at what quantity.  This is a challenge.  You will need to understand [building complex forms and nested forms](http://guides.rubyonrails.org/form_helpers.html#building-complex-forms).

### Challenge

__Make it beautiful__