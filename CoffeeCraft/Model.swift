//
//  Model.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 01.02.2024.
//

import Foundation

struct Drink {
    let variety: Grains //Сорт кофе
    let grinding: Subtlety //Тонкость помола
    let roasting: Roasting //Обжарка зерен
    let type: TypeDrink //Тип напитка
    let temperature: Degrees
    let sugar = true
    let honey = true
    let spices = true
    let syrup = true
    let dishes: Dishes
}

//TODO: - Доработать метод
enum NotChosen: String {
    case defalt = "Default"
}

enum Grains: String {
    case arabica = "Arabica"
    case robusta = "Robusta"
    case liberica = "Liberica"
    case excelsa = "Excelsa"
}

//TODO: Поправить на формулу через свитч
enum Subtlety: String {
    case extraFine = "Extra fine"
    case fine = "Fine"
    case medium = "Medium"
    case coarse = "Coarse"
}

enum Roasting: String {
    case light = "Light"
    case medium = "Medium"
    case mediumDark = "Medium-Dark"
    case dark = "Dark"
}

struct TypeDrink {
    var milk = true
    
    var type: [String] {
        milk
        ? ["Macchiato", "Long Macchiato", "Cortado", "Breve", "Cappuccino", "Flat White", "Cafe Latte", "Mocha", "Vienna", "Affogato", "Cafe au Lait"]
        : ["Espresso", "Double Espresso", "Red Eye", "Black Eye", "Americano", "Long Black"]
    }
}

enum Degrees: String {
    case ice = "Ice"
    case hot = "Hot"
}

enum Dishes: String {
    case cezve = "Cezve"
    case mokaPot = "Moka Pot"
    case espressoMachine  = "Espresso Machine"
    case frenchPress = "French Press"
    case filter = "Filter"
}

//https://www.webstaurantstore.com/article/397/types-of-coffee-drinks.html
