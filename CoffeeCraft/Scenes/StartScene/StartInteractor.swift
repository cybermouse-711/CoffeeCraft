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
        drink = Drink(dishes: ["test"], type: ["test"], coffee: ["test"], grains: ["test"], roasting: ["test"], grinding: ["test"], ingredients: ["test": false])
        let response = StartResponse()
        presenter?.presentStart(response: response)
    }
}

