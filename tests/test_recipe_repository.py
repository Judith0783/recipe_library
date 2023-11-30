from lib.recipe_repository import *
from lib.recipe_directory import Recipe

"""
When we call RecipeRepository#all
We get a list of Recipe objects reflecting the seed data.
"""
def test_get_all_recipes(db_connection): 
    db_connection.seed("seeds/recipe.sql") 
    repository = RecipeRepository(db_connection) 
    recipes = repository.all()
    
    assert recipes == [
        Recipe(1, 'Blueberry Muffins', "20 minutes", 3),
        Recipe(2, 'Carrot Soup', "30 minutes", 2),
        Recipe(3, 'Mashed Cauliflower', "15 minutes", 2),
        Recipe(4, 'Cheese Cake', "45 minutes", 4),
        Recipe(5, 'Mushroom Stroganoff', "30 minutes", 5),
        Recipe(6, 'Green Chutney', "35 minutes", 1)
    ]

