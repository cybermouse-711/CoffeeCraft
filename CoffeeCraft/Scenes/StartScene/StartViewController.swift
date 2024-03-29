//
//  StartViewController.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 01.02.2024.
//

import UIKit

//MARK: - StartViewController
final class StartViewController: UIViewController {
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view = StartView(frame: UIScreen.main.bounds)
    }
    
    //MARK: Methods
    @objc
    func goCreationDrinkVC() {
        let vc = СreationDrinkViewController()
        let navigationVC = UINavigationController(rootViewController: vc)
        navigationVC.modalPresentationStyle = .fullScreen
        present(navigationVC, animated: true)
    }
}
