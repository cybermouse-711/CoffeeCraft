//
//  Model.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 01.02.2024.
//

import Foundation

struct Drink {
    ///Сорт кофе
    let variety: Grains
    ///Тонкость помола/
    let grinding: Subtlety
    ///Обжарка зерен
    let roasting: Roasting
    ///Тип напитка
    let type: TypeDrink
    ///Температура напитка
    let temperature: Degrees
    ///Добавить сахар
    let sugar = true
    ///Добавить  мед
    let honey = true
    ///Добавить специи
    let spices = true
    ///Добавить сироп
    let syrup = true
    ///Способ приготовления кофе
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

//TODO: - Доработать метод
/*
struct Subtlety {
    let dis = dishes
    
    var subtlety: [String] {
        
        switch dis {
        case .cezve:
            return ["Extra fine"]
        case .espressoMachine:
            return ["Fine"]
        case .filter:
            return ["Medium"]
        case .frenchPress:
            return ["Medium", "Coarse"]
        case .mokaPot:
            return ["Fine", "Medium"]
        }
    }
}
*/
enum Subtlety: String {
    ///Помол для турки
    case extraFine = "Extra fine"
    ///Помол для  кофемашины и гейзерная
    case fine = "Fine"
    ///Помол для гейзерной, фильтра и френч пресса
    case medium = "Medium"
    ///Помол для френч пресса
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
    ///Турка
    case cezve = "Cezve"
    ///Гейзерная
    case mokaPot = "Moka Pot"
    ///Кофемашина
    case espressoMachine  = "Espresso Machine"
    ///Френч пресс
    case frenchPress = "French Press"
    ///Фильтр
    case filter = "Filter"
}
