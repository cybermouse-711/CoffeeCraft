//
//  Model.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 01.02.2024.
//

////MARK: - Dishes for JSON
/////Модель для парсинга JSON с типом посуды
//struct Dishes: Decodable {
//    let id: String
//    let dishes: String
//    let grinding: [String]
//    let shots: Int
//    let recipe: String
//}
//
////MARK: - TypeCoffee for JSON
/////Модель для парсинга JSON с рецептом кофе
//struct TypeCoffee: Decodable {
//    let id: String
//    let milk: Bool
//    let type: String
//    let shots: Int
//    let recipe: String
//    let fact: String
//}

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
    
//    ///Добавить сахар
//    let sugar = false
//    ///Добавить  мед
//    let honey = false
//    ///Добавить специи
//    let spices = false
//    ///Добавить сироп
//    let syrup = false
//    ///Температура напитка
//    let ice = false
}

//MARK: - Recipe Drink for Scene
///Модель для формирования экрана с рецептом
//struct Recipe {
//    ///Приготовление эспрессо на основе посуды
//    let espresso: Dishes
//    ///Количество полученных порций эспрессо
//    let shotsEspresso: Dishes
//    ///Приготовление определенного типа кофе на основе эспрессо
//    let coffee: TypeCoffee
//    ///Количество порций эспрессо для приготовления напитка
//    let shotsCoffee: TypeCoffee
//    ///Приготовление напитка на основе кофе
//    let drink: String
//    ///Изображение с посудой для кофе
//    let image: String
//    ///Факт о кофе
//    let fact: TypeCoffee
//}

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
