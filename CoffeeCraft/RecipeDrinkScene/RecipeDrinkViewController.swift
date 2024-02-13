//
//  RecipeDrinkViewController.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 14.02.2024.
//

import UIKit

//MARK: - RecipeDrinkViewController
final class RecipeDrinkViewController: UIViewController {
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view = RecipeDrinkView(frame: UIScreen.main.bounds)
    }
}
