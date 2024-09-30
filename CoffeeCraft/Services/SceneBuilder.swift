//
//  SceneBuilder.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 07.05.24.
//

import Foundation

protocol Builder {
    func getDrink() -> Drink?
    func getRecipe(_ selection: UserSelection) -> Recipe?
}

final class SceneBuilder: Builder {

    private let modelDrink = Drink(
        dishes: Dishes.allCases.map { $0.rawValue },
        type: TypeCoffee.allCases.map { $0.rawValue },
        coffee: (BlackCoffee.allCases.map { $0.rawValue } + WhiteCoffee.allCases.map { $0.rawValue }),
        grains: Grains.allCases.map { $0.rawValue },
        roasting: Roasting.allCases.map { $0.rawValue },
        grinding: Grinding.allCases.map { $0.rawValue },
        ingredients: Additional.ingredients
    )
    
    func getDrink() -> Drink? {

        print(modelDrink)
        return modelDrink
    }
    
    func getRecipe(_ selection: UserSelection) -> Recipe? {
        guard let dish = selection.dish else { return nil }
        
        let espressoRecipe = dish.recipeEspresso
        
        var coffeeRecipe = String()
        if selection.typeCoffee == .black, let blackCoffee = BlackCoffee(rawValue: selection.coffee ?? "None") {
            coffeeRecipe = blackCoffee.recipe
        } else if selection.typeCoffee == .white, let whiteCoffee = WhiteCoffee(rawValue: selection.coffee ?? "None") {
            coffeeRecipe = whiteCoffee.recipe
        }
            
        let finalRecipe = "\(espressoRecipe)\n\(coffeeRecipe)"
        
        let imageName = dish.icon
        
        let recipe = Recipe(espresso: espressoRecipe, coffee: coffeeRecipe, drink: finalRecipe, image: imageName)
        
        print(recipe)
        return recipe
    }
}

