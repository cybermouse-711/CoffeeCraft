//
//  DrinkBuilder.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 07.05.24.
//

//import Foundation
//
////MARK: - Protocols
//protocol IDrinkBuilder {
//    ///Метод для преобразования модели с словарь
//    func build(_ model: Drink) -> DrinkBuilder
//}
//
/////Класс для преобразования модели в готовый словарь
////MARK: - DrinkBuilder
//final class DrinkBuilder {
//    ///Словарь со значением [String]
//    private var dictionaryForMenu = [String: [String]]()
//    ///Словарь со значением Bool
//    private var dictionaryForSwitch = [String: Bool]()
//}
//
////MARK: - Extensions
//extension DrinkBuilder: IDrinkBuilder {
//    
//    ///Метод для сортировки модели на два словаря
//    func build(_ model: Drink) -> DrinkBuilder {
//        
//        //Создание массива данных
//        let modelElements: [Any] = [model.dishes, model.grinding, model.type, model.honey, model.ice, model.milk, model.roasting, model.spices, model.spices, model.sugar, model.syrup, model.variety]
//        
//        //Перебор массива данных на два массива для формирования словарей
//        var arrayForMenu = [Any]()
//        var arrayForSwitch = [Bool]()
//        
//        for modelElement in modelElements {
//            
//            //FIXME: - Убрать принудительное преобразование
//            if modelElement as? Bool ?? false {
//                arrayForSwitch.append(modelElement as! Bool)
//            } else {
//                arrayForMenu.append(modelElement)
//            }
//        }
//        
//        //Формирование словаря из массива Bool значений
//        for value in arrayForSwitch {
//            let key = value.description
//            let value = value
//            dictionaryForSwitch[key] = value
//        }
//        
//        //Создание промежуточных массивов для формирования значений словаря меню
////        var modelAnyElements = [[String]]()
////        
////        for element in arrayForMenu {
////            
////            if element is? model.variety {
////                let newElement = [element.allCases.description]
////                modelAnyElements.append(newElement)
////            } else 
////            if element is? model.roasting {
////                let newElement = [element.allCases.description]
////                modelAnyElements.append(newElement)
////            } else
////            if element is? model.dishes {
////                let newElement = [element.dishes]
////                modelAnyElements.append(newElement)
////            } else
////            if element is? model.grinding {
////                let newElement = [element.grinding]
////                modelAnyElements.append(newElement)
////            }
////            else
////            if element is? model.type {
////                let newElement = [element.type]
////                modelAnyElements.append(newElement)
////            }
////            else 
////            if element is? model.milk {
////                let newElement = [element.milk]
////                modelAnyElements.append(newElement)
////            }
////        }
//        
//        let variety = [Drink.Grains.allCases.description]
//        let roasting = [Drink.Roasting.allCases.description]
//        
//        let modelAnyElements: [Any] = [[model.dishes.dishes], [model.grinding.grinding], roasting, [model.type.type], variety, [model.milk.milk]]
//        
//        //Формирование словаря из [String] для меню
//        for modelElement in modelElements  {
//            let value = modelElement as? [String] ?? ["No Data"]
//            let key = value.description
//            dictionaryForMenu[key] = value
//        }
//        
//        //Сортировка словарей
//        dictionaryForSwitch.sorted { $0.key.description > $1.key.description }
//        dictionaryForMenu.sorted { $0.key.description > $1.key.description }
//        
//        return self
//    }
//}

