//
//  RecipeDrinkInteractor.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 24.04.24.
//

//MARK: Protocols
protocol RecipeDrinkInteractorBusinessLogic {
    func showRecipeDrink(request: RecipeDrinkRequest)
}

protocol RecipeDrinkInteractorDataStore {
    var drink: Drink? { get }
}

//MARK: - RecipeDrinkInteractor
final class RecipeDrinkInteractor {
    
    var presenter: RecipeDrinkPresenterLogic?
    var drink: Drink?
}

//MARK: - Extension for protocols
extension RecipeDrinkInteractor: RecipeDrinkInteractorBusinessLogic, RecipeDrinkInteractorDataStore {
    
    func showRecipeDrink(request: RecipeDrinkRequest) {
        drink = Drink(dishes: ["test"], type: ["test"], coffee: ["test"], grains: ["test"], roasting: ["test"], grinding: ["test"], ingredients: ["test": false])
        let response = RecipeDrinkResponse()
        presenter?.presentRecipeDrink(response: response)
    }
}


