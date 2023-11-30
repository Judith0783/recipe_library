from lib.recipe_directory import Recipe
"""
creating a test with the fields/attributes
"""
def test_constructs_with_fields():
    recipe = Recipe(1,'Blueberry Muffins', "20 minutes", 3)
    assert recipe.id == 1
    assert recipe.recipe_name == 'Blueberry Muffins'
    assert recipe.cooking_time == "20 minutes"
    assert recipe.rating == 3