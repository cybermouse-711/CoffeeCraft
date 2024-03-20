//
//  Model.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 01.02.2024.
//

import Foundation

//MARK: - Dishes for JSON
struct Dishes: Decodable {
    let id: String
    let dishes: String
    let grinding: [String]
    let shots: Int
    let recipe: String
}

//MARK: - TypeCoffee for JSON
struct TypeCoffee: Decodable {
    let id: String
    let milk: Bool
    let type: String
    let shots: Int
    let recipe: String
    let fact: String
}

//MARK: - Created Drink for Scene
struct Drink {
    ///Посуда для приготовления кофе
    let dishes: Dishes
    ///Тип кофе
    let type: TypeCoffee
    ///Сорт кофе
    let variety: Grains
    ///Обжарка зерен
    let roasting: Roasting
    ///Тонкость помола
    let grinding: Dishes
    ///Молоко
    let milk: TypeCoffee
    ///Добавить сахар
    let sugar = false
    ///Добавить  мед
    let honey = false
    ///Добавить специи
    let spices = false
    ///Добавить сироп
    let syrup = false
    ///Температура напитка
    let ice = false
    
}

//MARK: Coffee grains
enum Grains: String {
    case arabica = "Arabica"
    case robusta = "Robusta"
    case liberica = "Liberica"
    case excelsa = "Excelsa"
    ///По умолчанию
    case defalt = "Default"
}

//MARK: Roasting beans
enum Roasting: String {
    case light = "Light"
    case medium = "Medium"
    case mediumDark = "Medium-Dark"
    case dark = "Dark"
    ///По умолчанию
    case defalt = "Default"
}

//MARK: - Recipe Drink for Scene
struct Recipe {
    ///Приготовление эспрессо на основе посуды
    let espresso: Dishes
    ///Количество полученных порций эспрессо
    let shotsEspresso: Dishes
    ///Приготовление определенного типа кофе на основе эспрессо
    let coffee: TypeCoffee
    ///Количество порций эспрессо для приготовления напитка
    let shotsCoffee: TypeCoffee
    ///Приготовление напитка на основе кофе
    let drink: String
//    ///Изображение с посудой для кофе
//    let image: String
    ///Факт о кофе
    let fact: TypeCoffee
}
