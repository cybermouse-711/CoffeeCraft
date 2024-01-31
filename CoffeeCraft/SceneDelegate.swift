//
//  SceneDelegate.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 01.02.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = scene as? UIWindowScene else { return }
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        let startVC = StartViewController()
        window?.rootViewController = startVC
        
    }

}

