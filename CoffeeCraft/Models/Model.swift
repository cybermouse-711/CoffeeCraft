//
//  Model.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 01.02.2024.
//

import Foundation

struct Drink {
    ///Способ приготовления кофе
    let dishes: Dishes
    ///Сорт кофе
    let variety: Grains
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

    ///Тонкость помола/
    var grinding: [String] {
        switch dishes {
        case Dishes.cezve:
            return ["Extra fine"]
        case Dishes.espressoMachine:
            return ["Fine"]
        case Dishes.filter:
            return ["Medium"]
        case Dishes.frenchPress:
            return ["Medium", "Coarse"]
        case Dishes.mokaPot:
            return ["Fine", "Medium"]
        }
    }
}

//TODO: - Доработать метод
enum NotChosen: String {
    case defalt = "Default"
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

enum Grains: String {
    case arabica = "Arabica"
    case robusta = "Robusta"
    case liberica = "Liberica"
    case excelsa = "Excelsa"
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
