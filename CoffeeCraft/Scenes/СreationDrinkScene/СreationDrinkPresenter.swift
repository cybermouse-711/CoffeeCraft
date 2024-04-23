//
//  СreationDrinkPresenter.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 16.04.24.
//

//MARK: Protocols
protocol СreationDrinkPresenterLogic {
    func presentСreationDrink(response: СreationDrinkResponse)
}

//MARK: - СreationDrinkPresenter
final class СreationDrinkPresenter {
    
    var viewController: СreationDrinkViewControllerLogic?
}

//MARK: - Extension for protocols
extension СreationDrinkPresenter: СreationDrinkPresenterLogic {
    
    func presentСreationDrink(response: СreationDrinkResponse) {
        let viewModel = СreationDrinkViewModel()
        viewController?.displayСreationDrink(viewModel: viewModel)
    }
}
