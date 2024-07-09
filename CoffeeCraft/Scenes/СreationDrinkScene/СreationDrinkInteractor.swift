//
//  СreationDrinkInteractor.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 16.04.24.
//

//MARK: Protocols
protocol СreationDrinkInteractorBusinessLogic {
    func showСreationDrink(request: СreationDrinkRequest)
}

protocol СreationDrinkInteractorDataStore {
    var drink: Drink? { get }
}

//MARK: - СreationDrinkInteractor
final class СreationDrinkInteractor {
    
    var presenter: СreationDrinkPresenterLogic?
    var drink: Drink?
}

//MARK: - Extension for protocols
extension СreationDrinkInteractor: СreationDrinkInteractorBusinessLogic, СreationDrinkInteractorDataStore {
    
    func showСreationDrink(request: СreationDrinkRequest) {
        drink = Drink(dishes: ["test"], type: ["test"], coffee: ["test"], grains: ["test"], roasting: ["test"], grinding: ["test"], ingredients: ["test": false])
        let response = СreationDrinkResponse()
        presenter?.presentСreationDrink(response: response)
    }
}
