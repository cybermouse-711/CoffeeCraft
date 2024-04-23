//
//  StartInteractor.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 23.04.24.
//

//MARK: Protocols
protocol StartInteractorBusinessLogic {
    func showStart(request: StartRequest)
}

protocol StartInteractorDataStore {
    var drink: Drink? { get }
}

//MARK: - StartInteractor
final class StartInteractor {
    
    var presenter: StartPresenterLogic?
    var drink: Drink?
}

//MARK: - Extension for protocols
extension StartInteractor: StartInteractorBusinessLogic, StartInteractorDataStore {
    
    func showStart(request: StartRequest) {
        drink = Drink(
            dishes: Dishes(id: "", dishes: "", grinding: [""], shots: 1, recipe: ""),
            type: TypeCoffee(id: "", milk: true, type: "", shots: 0, recipe: "", fact: ""),
            variety: Grains.arabica,
            roasting: Roasting.dark,
            grinding: Dishes(id: "", dishes: "", grinding: [""], shots: 1, recipe: ""),
            milk: TypeCoffee(id: "", milk: true, type: "", shots: 0, recipe: "", fact: "")
        )
        let response = StartResponse()
        presenter?.presentStart(response: response)
    }
}

