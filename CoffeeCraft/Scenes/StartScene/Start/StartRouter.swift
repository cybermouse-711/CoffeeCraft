//
//  StartRouter.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 23.04.24.
//

import UIKit

//MARK: Protocols
protocol IStartRouter: BaseRouting {}

//MARK: - StartRouter
final class StartRouter {
    
    //MARK: Enums
    enum Target {
        case creationDrink
    }
    
    //MARK: Private Properties
    private let viewController: UIViewController
    
    //MARK: Init
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}

//MARK: - Extension for protocols
extension StartRouter: IStartRouter {
    func routeTo(target: Any) {
        guard let registerTarget = target as? StartRouter.Target else { return }
        
        switch registerTarget {
        case .creationDrink:
            let vc = СreationDrinkViewController()
            let navigationVC = UINavigationController()
            vc.modalPresentationStyle = .fullScreen
            navigationVC.pushViewController(vc, animated: true)
        }
    }
}

