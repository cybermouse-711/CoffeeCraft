//
//  StartPresenter.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 23.04.24.
//

//MARK: Protocols
protocol StartPresenterLogic {
    func presentStart(response: StartResponse)
}

//MARK: - StartPresenter
final class StartPresenter {
    
    var viewController: StartViewControllerLogic?
}

//MARK: - Extension for protocols
extension StartPresenter: StartPresenterLogic {
    
    func presentStart(response: StartResponse) {
        let viewModel = StartViewModel()
        viewController?.displayStart(viewModel: viewModel)
    }
}
