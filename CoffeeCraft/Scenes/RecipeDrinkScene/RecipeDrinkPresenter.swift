//
//  RecipeDrinkPresenter.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 24.04.24.
//

//MARK: Protocols
protocol RecipeDrinkPresenterLogic {
    func presentRecipeDrink(response: RecipeDrinkResponse)
}

//MARK: - RecipeDrinkPresenter
final class RecipeDrinkPresenter {
    
    var viewController: RecipeDrinkViewControllerLogic?
}

//MARK: - Extension for protocols
extension RecipeDrinkPresenter: RecipeDrinkPresenterLogic {
    
    func presentRecipeDrink(response: RecipeDrinkResponse) {
        let viewModel = RecipeDrinkViewModel()
        viewController?.displayRecipeDrink(viewModel: viewModel)
    }
}
