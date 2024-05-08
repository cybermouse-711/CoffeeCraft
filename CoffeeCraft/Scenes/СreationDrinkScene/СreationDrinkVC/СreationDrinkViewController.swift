//
//  СreationDrinkViewController.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 03.02.2024.
//

import UIKit

//MARK: Protocols
protocol СreationDrinkViewControllerLogic {
    func displayСreationDrink(viewModel: СreationDrinkViewModel)
}

//MARK: - СreationDrinkViewController
final class СreationDrinkViewController: UIViewController {
    
    var interactor: СreationDrinkInteractorBusinessLogic?
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view = СreationDrinkView(frame: UIScreen.main.bounds)
        setupNavController()
        setup()
    }
    
    //MARK: Methods
    @objc
    func goRecipeDrinkVC() {
        let vc = RecipeDrinkViewController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func setup() {
        let request = СreationDrinkRequest()
        interactor?.showСreationDrink(request: request)
    }
    
    private func dismissViewControllers() {
        dismiss(animated: true)
    }
}

//MARK: - Setup UI
private extension СreationDrinkViewController {
    func setupNavController() {
        title = Titles.navBar
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.setupNavBarAppearance(navigationController, navBarAppearance)
      
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            systemItem: .cancel,
            primaryAction: UIAction { [unowned self] _ in
                dismissViewControllers()
            }
        )
    }
}

//MARK: - Extension for protocols
extension СreationDrinkViewController: СreationDrinkViewControllerLogic {
    func displayСreationDrink(viewModel: СreationDrinkViewModel) {
        
    }
}
