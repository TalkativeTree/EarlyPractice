require_relative('bistro')

bens_bistro = Bistro.new
bens_bistro.load_recipes
bens_bistro.print_all_parts(:name)
# => "Kale Burger"
# => "Peanut Butter Coffee Brownie"
# => "Poodle Cake (For your puppy!)"
bens_bistro.find_recipe_by_id(3)
# => ID: 3
# => NAME: Peanut Butter Coffee Brownie
# => DESCRIPTION: Just looking has caused people to gain 10 pounds!
# => INGREDIENTS: Chocolate, Peanut Butter, Espresso, Cream Cheese
# => DIRECTIONS: Chew the espresso beans to a pulp, spit them into the bowl. Now mix in the chocolate, cream cheese, and peanut butter. Bake at 450 for 45 minutes


bens_bistro.print_part(1, :directions)
# => "Preheat oven to 500 degrees, put in a cow. Wait 10 minutes. Put in some kale. Take out cow and kale. Put on bun. Serve HOT!"