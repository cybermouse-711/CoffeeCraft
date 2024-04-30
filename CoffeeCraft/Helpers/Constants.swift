//
//  Constants.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 24.04.24.
//

///Словарь с наименованием элементов
enum Titles {
    
    static let navBar: String = "Сreation Drink"
    static let startButton: String = "Create a drink"
    static let createButton: String = "Create a recipe"
    static let recipeDrinkLabel: String = "Recipe created"
}

///Словарь с перечислением цветов
enum ColorSet {
    
    static let white: String = "SceneWhite"
    static let lightGray: String = "SceneLightGray"
    static let darkGray: String = "SceneDarkGray"
    static let black: String = "SceneBlack"
    static let gray: String = "ButtonGray"
    static let brown: String = "ButtonBrown"
}

///Словарь с наименованиями файлов для парсинга
enum File {
    static let dishes: String = "dishes"
    static let typeCoffee: String = "type_coffee"
}

///Словарь с расширениями файлов для парсинга
enum ExtensionFile {
    static let json = "json"
}

/////Перечисления для роутинга
//enum Target {
//    
//    case start
//    case creationDrink
//    case recipeDrink
//}
