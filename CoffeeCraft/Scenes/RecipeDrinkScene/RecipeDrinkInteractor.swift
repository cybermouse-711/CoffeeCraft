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
        drink = Drink(
            dishes: Dishes(id: "", dishes: "", grinding: [""], shots: 1, recipe: ""),
            type: TypeCoffee(id: "", milk: true, type: "", shots: 0, recipe: "", fact: ""),
            variety: Grains.arabica,
            roasting: Roasting.dark,
            grinding: Dishes(id: "", dishes: "", grinding: [""], shots: 1, recipe: ""),
            milk: TypeCoffee(id: "", milk: true, type: "", shots: 0, recipe: "", fact: "")
        )
        let response = RecipeDrinkResponse()
        presenter?.presentRecipeDrink(response: response)
    }
}


