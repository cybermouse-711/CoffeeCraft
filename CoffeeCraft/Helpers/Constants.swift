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

///Cловарь с иконками
enum IconsSet {
    static let cezve: String = "cezve.png"
    static let mokaPot: String = "mokaPot.png"
    static let espressoMachine: String = "espressoMachine.png"
    static let frenchPress: String = "frenchPress.png"
    static let filter: String = "filter.png"
}

///Словарь для Табличного представления
enum TitlesofSection {
    static let titleforHeader0: String = "Customize your drink"
    static let titleforHeader1: String = "Add ingredients"
}

///Словарь с наименованиями файлов для парсинга
enum File {
    static let dishes: String = "dishes"
    static let typeCoffee: String = "typeCoffee"
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
