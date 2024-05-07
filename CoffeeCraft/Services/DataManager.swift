//
//  DataManager.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 07.05.24.
//

import Foundation

//MARK: - Protocols
protocol IDataManager {
    ///Метод для преобразования модели с словарь со значением Bool
    func fetchDataForBoolValue(_ model: Drink) -> [String: Bool]
    
    ///Метод для преобразования модели с словарь со значением [String]
    func fetchDataForStringValue(_ model: Drink) -> [String: [String]]
}

///Класс для преобразования модели в готовый словарь
//MARK: - DataManager
final class DataManager {
    
}

//MARK: - Extensions
extension DataManager: IDataManager {
    
    func fetchDataForBoolValue(_ model: Drink) -> [String: Bool] {
        var dictionary: [String: Bool] = [:]
        var value = false
        var key = "No Data"
        
        let modelElements: [Any] = [model.dishes, model.grinding, model.honey, model.ice, model.milk, model.roasting, model.spices, model.sugar, model.syrup, model.type, model.variety]
        
        for modelElement in modelElements  {
            value = modelElement as? Bool ?? false
            key = value.description
            dictionary.merging([key : value]) { _, value in value }
        }

        dictionary.sorted( by:  {$0.key < $1.key} )
        
        return dictionary
    }
    
    func fetchDataForStringValue(_ model: Drink) -> [String : [String]] {
        var dictionary: [String: [String]] = [:]
        var value = ["No Data"]
        var key = "No Data"
        
        let variety = [Grains.allCases.description]
        let roasting = [Roasting.allCases.description]
        
        let modelElements: [Any] = [[model.dishes.dishes], [model.grinding.grinding], roasting, [model.type.type], variety]
        
        for modelElement in modelElements  {
            value = modelElement as? [String] ?? ["No Data"]
            key = value.description
            dictionary.merging([key : value]) { _, value in value }
        }
        
        dictionary.sorted( by:  {$0.key < $1.key} )
        
        return dictionary
    }
}
