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
        setup()
    }
    
    func setup() {
        let request = RecipeDrinkRequest()
        interactor?.showRecipeDrink(request: request)
    }
}

//MARK: - Extension for protocols
extension RecipeDrinkViewController: RecipeDrinkViewControllerLogic {
    func displayRecipeDrink(viewModel: RecipeDrinkViewModel) {
        
    }
}
