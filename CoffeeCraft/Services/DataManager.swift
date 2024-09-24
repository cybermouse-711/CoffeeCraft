//
//  DataManager.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 07.07.24.
//

import Foundation

enum Dishes: String, CaseIterable {
    case cezve = "Cezve"
    case mokaPot = "Moka Pot"
    case espressoMachine = "Espresso Machine"
    case frenchPress = "French Press"
    case filter = "Filter"
    
    var recipeEspresso: String {
        switch self {
        case .cezve:
            "For one shot of espresso: pour the water into the cezve. Add the 1 tablespoons coffee and sugar, if using. Mix well to dissolve the coffee and sugar. Do not stir after this point. Place the cezve on the stovetop over medium heat. After a few minutes, the coffee will rise and foam up. Just before it begins to boil, remove the cezve from the heat. Skim off the foam, adding a little to each serving cup. Return the cezve to the heat and let it slowly foam up again. Pour the coffee very slowly into the serving cups so the foam rises to the top. Let the coffee settle for a few minutes."
        case .mokaPot:
            "For one shot of espresso: set your kettle to boil, or, if you’re using a temperature controlled kettle. Add your heated water to the bottom of the Moka pot, filling to the line inside the carafe. Put the metal filter basket into the brewer. Add 1-2 tablespoons of freshly ground coffee into the filter. Use your finger to level out the grounds, or, using a heat-resistant towel, give it a gentle shake to level out the grounds. Screw the top and bottom together using a heat-resistant towel. Turn on your heat source to medium-low and put the Moka pot on top. Leave the top lid open. The coffee will begin to come out of the spout. Close the lid. When you hear a hissing sound, remove the Moka pot from the heat source and allow the coffee to finish brewing."
        case .espressoMachine:
            "For one shot of espresso: measure 1 tablespoon or 9g of beans for a single shot. Tamp horizontally and straight and place the watercup onto the (naked)portafilter. Fill 30 ml boiled water till first marker line (the ideal temperature for espresso is 95° C). Slide the combination into the Superkop. Pull the lever 6 times in 25-30 seconds…don’t go too fast. Pour the shot into a preheated cup."
        case .frenchPress:
            "For one shot of espresso: heat 2 ounces of water water to hot but not boiling 90-95°C. Add 1 tablespoon or 9g of beans coffee to the French press. Top with the hot water and stir. Set a timer and wait 4 minutes. Place the lid on the French press and slowly press on the plunger all the way down. Pump the plunger several times to create crema. Then press the plunger all the way down."
        case .filter:
            "For one shot of espresso: the best temperature for brewing coffee is 95°C, it will be in the kettle about a minute after it stops boiling. Insert the filter and wet it generously with hot water. Pour out this water so as not to get a papery taste in your coffee. Pour 1 tablespoon or 9g of coffee into the filter and smooth the layer.Gently pour in a little water (about 50 ml) to “wake up” the coffee. Wait 50 seconds. Spill the water in a diverging spiral. Maintain the same level of water in the filter so that the coffee brewing temperature remains constant."
        }
    }
    
    var icon: String {
        switch self {
        case .cezve:
            "cezve.png"
        case .mokaPot:
            "mokaPot.png"
        case .espressoMachine:
            "espressoMachine.png"
        case .frenchPress:
            "frenchPress.png"
        case .filter:
            "filter.png"
        }
    }
    
    var time: String {
        switch self {
        case .cezve:
            "5.0"
        case .mokaPot:
            "6.0"
        case .espressoMachine:
            "0.5"
        case .frenchPress:
            "4.0"
        case .filter:
            "0.8"
        }
    }
}

enum TypeCoffee: String, CaseIterable {
    case white = "White Coffee"
    case black = "Black Coffee"
}

enum WhiteCoffee: String, CaseIterable {
    case macchiato = "Macchiato"
    case longMacchiato = "Long Macchiato"
    case cortado = "Cortado"
    case breve = "Breve"
    case cappuccino = "Cappuccino"
    case flatWhite = "Flat White"
    case cafeLatte = "Cafe Latte"
    case mocha = "Mocha"
    case vienna = "Vienna"
    case affogato = "Affogato"
    
    var recipe: String {
        switch self {
        case .macchiato:
            "To prepare the drink, take 1 shot of espresso and add 1 to 2 teaspoons of steamed milk"
        case .longMacchiato:
            "To prepare the drink, take 2 shots of espresso and add 2 to 4 teaspoons of steamed milk"
        case .cortado:
            "To prepare the drink, take 1 shot of espresso and add 1 oz. of warm milk + 1 cm of foam"
        case .breve:
            "To prepare the drink, take 1 shot of espresso and add 3 oz. of steamed half-and-half + 1 cm of foam"
        case .cappuccino:
            "To prepare the drink, take 1 shot of espresso and add 2 oz. of steamed milk + 2 oz. of foamed milk"
        case .flatWhite:
            "To prepare the drink, take 1 shot of espresso and add 4 oz. of steamed milk"
        case .cafeLatte:
            "To prepare the drink, take 1 shot of espresso and add 8-10 oz. of steamed milk + 1 cm of foam"
        case .mocha:
            "To prepare the drink, take 1 shot of espresso and add 1-2 oz. of chocolate syrup/powder + 1-3 oz. of steamed milk + 2-3 cm of foam or whipped cream"
        case .vienna:
            "To prepare the drink, take 1 shot of espresso and add 2 oz. of whipped cream"
        case .affogato:
            "To prepare the drink, take 1 shot of espresso and add 1 scoop of vanilla ice cream"
        }
    }
}

enum BlackCoffee: String, CaseIterable {
    case espresso = "Espresso"
    case doubleEspresso = "Double Espresso"
    case redEye = "Red Eye"
    case blackEye = "Black Eye"
    case americano = "Americano"
    case longBlack = "Long Black"
    
    var recipe: String {
        switch self {
        case .espresso:
            "To prepare the drink, take 1 shot of espresso"
        case .doubleEspresso:
            "To prepare the drink, take 2 shots of espresso"
        case .redEye:
            "To prepare the drink, take 1 shot of espresso and add 6 oz. of drip-brewed coffee"
        case .blackEye:
            "To prepare the drink, take 2 shots of espresso and add 6 oz. of drip-brewed coffee"
        case .americano:
            "To prepare the drink, take 1 shot of espresso and add 3 oz. of hot water"
        case .longBlack:
            "To prepare the drink, take 2 shots of espresso and add 3 oz. of hot water"
        }
    }
}

enum Grains: String, CaseIterable {
    case arabica = "Arabica"
    case robusta = "Robusta"
    case liberica = "Liberica"
    case excelsa = "Excelsa"
    ///По умолчанию
    case defalt = "Default"
}

enum Roasting: String, CaseIterable {
    case light = "Light"
    case medium = "Medium"
    case mediumDark = "Medium Dark"
    case dark = "Dark"
    ///По умолчанию
    case defalt = "Default"
}

enum Grinding: String, CaseIterable {
    case extraFine = "Extra fine"
    case fine = "Fine"
    case medium = "Medium"
    case coarse = "Coarse"
    ///По умолчанию
    case defalt = "Default"
}

enum Additional {
    static let ingredients = ["Sugar": false, "Honey": false, "Spices": false, "Syrup": false, "Ice": false]
}

