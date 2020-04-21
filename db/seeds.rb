# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "vodka")
Ingredient.create(name: "rum")
Ingredient.create(name: "gin")
Ingredient.create(name: "prosecco")
Ingredient.create(name: "champagne")
Ingredient.create(name: "orange juice")
Ingredient.create(name: "vermouth")
Ingredient.create(name: "olives")

# Seed cocktails
Cocktail.create(name: "martini")
mojito = Cocktail.new(name: "mojito")
mojito.save

# Seed doses
dose_lemon = Dose.new(description: '2 slices', cocktail: mojito, ingredient: lemon)
dose_lemon.save

dose_vodka = Dose.new(description: '10 cl', cocktail: mojito, ingredient: vodka)
dose_vodka.save

dose_mint = Dose.new(description: '5 leaves', cocktail: mojito, ingredient: mint)
dose_mint.save

dose_ice = Dose.new(description: 'small handfull crushed', cocktail: mojito, ingredient: ice)
dose_ice.save
