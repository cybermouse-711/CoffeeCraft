//
//  UserSelection.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 01.10.24.
//

import Foundation

struct UserSelection {
    var dish: Dishes?
    var typeCoffee: TypeCoffee?
    var coffee: String?
    var grains: Grains?
    var roasting: Roasting?
    var grinding: Grinding?
    var ingredients: [String: Bool] = Additional.ingredients
}
