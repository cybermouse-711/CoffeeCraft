//
//  СreationDrinkViewController.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 03.02.2024.
//

import UIKit

//MARK: - СreationDrinkViewController
final class СreationDrinkViewController: UIViewController {
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view = СreationDrinkView(frame: UIScreen.main.bounds)
        setupNavController()
    }
    
    //MARK: Methods
    @objc
    func goRecipeDrinkVC() {
        let vc = RecipeDrinkViewController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
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

