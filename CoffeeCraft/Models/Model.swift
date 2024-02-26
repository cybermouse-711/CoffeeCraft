//
//  Model.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 01.02.2024.
//

import Foundation

//MARK: - Created Drink
struct Drink {
    ///Способ приготовления кофе
    let dishes: Dishes
    ///Тип кофе
    let type: TypeCoffee
    ///Сорт кофе
    let variety: Grains
    ///Обжарка зерен
    let roasting: Roasting
    ///Температура напитка
    let temperature: Degrees
    ///Добавить сахар
    let sugar = false
    ///Добавить  мед
    let honey = false
    ///Добавить специи
    let spices = false
    ///Добавить сироп
    let syrup = false

    ///Тонкость помола
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

//MARK: - Coffee preparation method
enum Dishes: String {
    ///Турка
    case cezve = "Cezve"
    ///Гейзерная
    case mokaPot = "Moka Pot"
    ///Кофемашина
    case espressoMachine = "Espresso Machine"
    ///Френч пресс
    case frenchPress = "French Press"
    ///Фильтр
    case filter = "Filter"
}

//MARK: - Coffee grains
enum Grains: String {
    case arabica = "Arabica"
    case robusta = "Robusta"
    case liberica = "Liberica"
    case excelsa = "Excelsa"
    ///По умолчанию
    case defalt = "Default"
}

//MARK: - Roasting beans
enum Roasting: String {
    case light = "Light"
    case medium = "Medium"
    case mediumDark = "Medium-Dark"
    case dark = "Dark"
    ///По умолчанию
    case defalt = "Default"
}

//MARK: - Coffee type
struct TypeCoffee {
    var milk = true
    
    var typeMilk: MilkCoffee?
    var typeBlack: BlackCoffee?
    
    if milk == true {
        typeBlack = nil
    } else {
        typeMilk = nil
    }
    
    /*
    var type: [String] {
        milk
        ? ["Macchiato", "Long Macchiato", "Cortado", "Breve", "Cappuccino", "Flat White", "Cafe Latte", "Mocha", "Vienna", "Affogato", "Cafe au Lait"]
        : ["Espresso", "Double Espresso", "Red Eye", "Black Eye", "Americano", "Long Black"]
    }
    */
}

//MARK: - Coffee with milk
enum MilkCoffee: String {
   case macchiato = "Macchiato"
   case cortado = "Cortado"
   case breve = "Breve"
   case cappuccino = "Cappuccino"
   case flatWhite = "Flat White"
   case cafeLatte = "Cafe Latte"
   case mocha = "Mocha"
   case vienna = "Vienna"
   case affogato = "Affogato"
   case cafeLait = "Cafe au Lait"
}

//MARK: - Coffee not milk
enum BlackCoffee: String {
    case espresso = "Espresso"
    case doubleEspresso = "Double Espresso"
    case redEye = "Red Eye"
    case blackEye = "Black Eye"
    case americano = "Americano"
    case longBlack = "Long Black"
}

//MARK: - Beverage temperature
enum Degrees: String {
    case ice = "Ice"
    case hot = "Hot"
}

//MARK: Extension for metods
extension Drink {
    
    ///Функция которая принимает параметр способа приготовления и на его основании генерирует рецепт эспрессо
    static func prepareEspresso() {
        
    }
    ///Функция которая берет готовое эспрессо и генерирует на его основании рецепт выбранного кофе
    static func prepareCoffee() {
        
    }
    ///Функция которая берет характеристики выбранных опций и генерирует напиток
    static func prepareDrink() {
        
    }
    ///Функция которая выбрасывает рандомные исторические факты из массива
    static func getRandomFact() {
    //TODO: - Доработать метод
    }
}
