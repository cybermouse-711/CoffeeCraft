//
//  StartConfigurator.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 23.04.24.
//

//MARK: - StartConfigurator
final class StartConfigurator {
    
    func configure(_ viewController: StartViewController) {
        let interactor = StartInteractor()
        let presenter = StartPresenter()
        
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
}
