//
//  СreationDrinkConfigurator.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 16.04.24.
//


//MARK: - СreationDrinkConfigurator
final class СreationDrinkConfigurator {
    
    func configure(_ viewController: СreationDrinkViewController) {
        let interactor = СreationDrinkInteractor()
        let presenter = СreationDrinkPresenter()
        
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
}
