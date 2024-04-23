//
//  StartViewController.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 01.02.2024.
//

import UIKit

//MARK: Protocols
protocol StartViewControllerLogic {
    func displayStart(viewModel: StartViewModel)
}

//MARK: - StartViewController
final class StartViewController: UIViewController {
    
    var interactor: StartInteractorBusinessLogic?
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view = StartView(frame: UIScreen.main.bounds)
        setup()
    }
    
    //MARK: Methods
    @objc
    func goCreationDrinkVC() {
        let vc = СreationDrinkViewController()
        let navigationVC = UINavigationController(rootViewController: vc)
        navigationVC.modalPresentationStyle = .fullScreen
        present(navigationVC, animated: true)
    }
    
    func setup() {
        let request = StartRequest()
        interactor?.showStart(request: request)
    }
}

//MARK: - Extension for protocols
extension StartViewController: StartViewControllerLogic {
    func displayStart(viewModel: StartViewModel) {
        
    }
}
