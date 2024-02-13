//
//  СreationDrinkViewController.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 03.02.2024.
//

import UIKit

//MARK: - СreationDrinkViewController
final class СreationDrinkViewController: UIViewController {
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view = СreationDrinkView(frame: UIScreen.main.bounds)
    }

}
