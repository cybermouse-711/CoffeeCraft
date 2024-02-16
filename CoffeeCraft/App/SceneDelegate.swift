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
        
      //  let startVC = Builder.makeStartViewController()
        let startVC = StartViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = startVC
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        
        guard let windowScene = scene as? UIWindowScene else { return }
        window?.windowScene = windowScene
    }
}

