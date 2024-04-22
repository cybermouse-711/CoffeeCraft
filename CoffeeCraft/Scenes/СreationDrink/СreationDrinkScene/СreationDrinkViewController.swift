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
}

//MARK: - Setup UI
extension СreationDrinkViewController {
    func setupNavController() {
        title = "Сreation Drink"
        
        let navBarAppearance = UINavigationBarAppearance()
       
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        navBarAppearance.backgroundColor = .brown
        
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
       
        navigationController?.navigationBar.tintColor = .black
    }
}

//MARK: - Extension for protocols
extension СreationDrinkViewController: СreationDrinkViewControllerLogic {
    func displayСreationDrink(viewModel: СreationDrinkViewModel) {
        
    }
}
