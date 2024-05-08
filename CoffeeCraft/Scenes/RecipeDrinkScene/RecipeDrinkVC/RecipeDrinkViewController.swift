//
//  RecipeDrinkViewController.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 14.02.2024.
//

import UIKit

//MARK: Protocols
protocol RecipeDrinkViewControllerLogic {
    func displayRecipeDrink(viewModel: RecipeDrinkViewModel)
}

//MARK: - RecipeDrinkViewController
final class RecipeDrinkViewController: UIViewController {
    
    var interactor: RecipeDrinkInteractorBusinessLogic?
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view = RecipeDrinkView(frame: UIScreen.main.bounds)
        setupNavController()
        setup()
    }
    
    func setup() {
        let request = RecipeDrinkRequest()
        interactor?.showRecipeDrink(request: request)
    }
    
    private func dismissViewControllers() {
        dismiss(animated: true)
    }
}

//MARK: - Setup UI
private extension RecipeDrinkViewController {
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
extension RecipeDrinkViewController: RecipeDrinkViewControllerLogic {
    func displayRecipeDrink(viewModel: RecipeDrinkViewModel) {
        
    }
}
