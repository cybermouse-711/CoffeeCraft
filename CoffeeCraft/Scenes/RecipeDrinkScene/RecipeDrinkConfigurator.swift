//
//  RecipeDrinkConfigurator.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 24.04.24.
//

//MARK: - RecipeDrinkConfigurator
final class RecipeDrinkConfigurator {
    
    func configure(_ viewController: RecipeDrinkViewController) {
        let interactor = RecipeDrinkInteractor()
        let presenter = RecipeDrinkPresenter()
        
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
}
