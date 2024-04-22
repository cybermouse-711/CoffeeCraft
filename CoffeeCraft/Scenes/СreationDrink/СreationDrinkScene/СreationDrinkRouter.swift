//
//  СreationDrinkRouter.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 22.04.24.
//

import UIKit

//MARK: Protocols
protocol IСreationDrinkRouter: BaseRouting {}

//MARK: - СreationDrinkRouter
final class СreationDrinkRouter {
    
    //MARK: Enums
    enum Target {
        case recipeDrink
    }
    
    //MARK: Private Properties
    private let viewController: UIViewController
    
    //MARK: Init
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}

//MARK: - Extension for protocols
extension СreationDrinkRouter: IСreationDrinkRouter {
    func routeTo(target: Any) {
        guard let registerTarget = target as? СreationDrinkRouter.Target else { return }
        
        switch registerTarget {
        case .recipeDrink:
            let vc = RecipeDrinkViewController()
            let navigationVC = UINavigationController()
            vc.modalPresentationStyle = .fullScreen
            navigationVC.pushViewController(vc, animated: true)
        }
    }
}
