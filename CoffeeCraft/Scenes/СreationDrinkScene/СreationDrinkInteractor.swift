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
        drink = Drink(
            dishes: Dishes(id: "", dishes: "", grinding: [""], shots: 1, recipe: ""),
            type: TypeCoffee(id: "", milk: true, type: "", shots: 0, recipe: "", fact: ""),
            variety: Grains.arabica,
            roasting: Roasting.dark,
            grinding: Dishes(id: "", dishes: "", grinding: [""], shots: 1, recipe: ""),
            milk: TypeCoffee(id: "", milk: true, type: "", shots: 0, recipe: "", fact: "")
        )
        let response = СreationDrinkResponse()
        presenter?.presentСreationDrink(response: response)
    }
}
