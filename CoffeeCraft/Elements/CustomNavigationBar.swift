//
//  CustomNavigationBar.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 08.05.24.
//

import UIKit

//MARK: - CustomNavigationBar
///Класс для настройки кастомного НавБара
final class CustomNavigationBar: UINavigationBar {
    
    //MARK: Private properties
    private let navBarAppearance = UINavigationBarAppearance()
    
    //MARK: Init
    init(_ title: String, _ navigationController: UINavigationController) {
        super.init(frame: .zero)
        
        let navigationController = navigationController 

        navigationController.navigationBar.topItem?.title = title
        navigationController.navigationBar.tintColor = UIColor(named: ColorSet.darkGray)
        
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor(named: ColorSet.darkGray) ?? UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(named: ColorSet.darkGray) ?? UIColor.white]
        navBarAppearance.backgroundColor = UIColor(named: ColorSet.gray)
        
        navigationController.navigationBar.standardAppearance = navBarAppearance
        navigationController.navigationBar.scrollEdgeAppearance = navBarAppearance
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
