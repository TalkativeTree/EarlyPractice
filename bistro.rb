require 'csv'
require_relative 'Parsers'
class Bistro
include Parsers
  def load_recipes
    @recipes = hashify_me
    end

    @recipes
  end

  # def print_recipes
  #   @recipes.each do |print| 
  #     print.each do |key, value|
  #       puts "#{key.upcase}: #{value}"
  #     end
  #   end
  # end 

  def print_part(recipe_id, part)
    p @recipes[recipe_id][part]
  end

  def print_all_parts(part)
    @parts = []
    looper = 1
    until looper > @recipes.length
    @parts << @recipes[looper][part]
    looper +=1    
    end
    puts @parts.sort
  end
  
  def find_recipe_by_id(recipe_id)
    raise "Can't find a recipe with an id of #{recipe_id.inspect}" unless recipes[recipe_id]
    recipes[recipe_id].each {|key, value| puts "#{key.upcase}: #{value}"}
  end

end

# menu = Recipe.new
# menu.define_attributes
# puts menu.attributes[1][:name]
