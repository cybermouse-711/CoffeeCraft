//
//  Model.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 01.02.2024.
//

//MARK: - Created Drink for Scene
///Модель для формирования экрана с выбором опций
struct Drink {
    ///Посуда для приготовления кофе
    let dishes: [String]
    ///Тип кофе
    let type: [String]
    ///Тип напитка
    let coffee: [String]
    ///Сорт кофе
    let grains: [String]
    ///Обжарка зерен
    let roasting: [String]
    ///Тонкость помола
    let grinding: [String]
    ///Ингредиенты
    let ingredients: [String: Bool]
}

//MARK: - Recipe Drink for Scene
///Модель для формирования экрана с рецептом
struct Recipe {
    ///Приготовление эспрессо на основе посуды
    let espresso: String
    ///Приготовление определенного типа кофе на основе эспрессо
    let coffee: String
    ///Приготовление напитка на основе кофе
    let drink: String
    ///Изображение с посудой для кофе
    let image: String
}
