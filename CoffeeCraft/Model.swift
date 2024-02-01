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
    let milk = true
    let sugar = true
    let honey = true
    let spices = true
    let syrup = true
    let dishes: Dishes
}

//TODO: - Доработать метод
enum NotChosen: String {
    case defalt = "по умолчанию"
}

//TODO: - Поправить названия с русского на англ

enum Grains: String {
    case arabica = "Арабика"
    case robusta = "Робуста"
    case liberica = "Либерика"
    case excelsa = "Эксцельса"
}

enum Subtlety: String {
    case large = "крупный"
    case medium = "средний"
    case small = "мелкий"
    case extraFine = "сверхтонкий"
}

enum Roasting: String {
    case light = "светлая"
    case dark = "темная"
}

//TODO: - Доработать метод 
struct TypeDrink {
    let withMilk: MilkDrink
    let notMilk: NotMilkDrink
}

enum MilkDrink: String {
    case cappuccino = "капучино"
    case latte = "латте"
    case raf = "раф"
    case mocha = "мокко"
    case flatWhite = "флэт уайт"
    case vienneseCoffee = "кофе по венски"
    case macchiato = "маккиато"
    case glasse = "гласе"
    case irish = "айриш"
    case bicherin = "бичерин"
}

enum NotMilkDrink: String {
   case espresso = "эспрессо"
   case doubleEspresso = "двойное эсспрессо"
   case americano = "американо"
   case dopoi = "допои"
   case hole = "лунка"
   case ristretto = "ристретто"
}

enum Degrees: String {
    case ice = "холодный"
    case hot = "горячий"
    
}
/*
enum Milk: String {
    case ordinary = "обычное"
    case soy = "соевое"
    case almond = "миндальное"
    case coconut = "кокосовое"
    case oatmeal = "овсяное"
}
*/
enum Dishes: String {
    case turk = "турка"
    case geyserCoffee = "гейзерная кофеварка"
    case coffeeMachine = "кофемашина"
    case frenchPress = "френчпресс"
    case filterCoffee = "фильтр-кофе"
}

/*
 
 Тип напитка
 (без молока (эспрессо, двойное эсспрессо, американо, допои, лунка, ристретто),
 с молоком (капучино, латте, раф, мокко, флэт уайт, кофе по венски, маккиато, гласе, айриш, бичерин))
 
 */
