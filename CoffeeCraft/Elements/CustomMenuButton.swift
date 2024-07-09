//
//  CustomMenuButton.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 09.07.24.
//

import UIKit

//MARK: - CustomMenuButton
///Класс для настройки кастомного меню
final class CustomMenuButton: UIButton {
    
    //MARK: Private properties
    private var children = [UIAction]()
    
    //MARK: Init
    init(_ title: String, _ actions: [String]) {
        super.init(frame: .zero)
        
        setTitle(title, for: .normal)
        setTitleColor(UIColor(named: ColorSet.brown), for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        
        for action in actions {
            children.append(UIAction(title: action, state: .on, handler: { (action: UIAction) in
                self.setTitle("\(action.title)", for: .normal)
            }))
        }
        
        let menuButton = UIMenu(title: title, children: children)
        
        menu = menuButton
        showsMenuAsPrimaryAction = true
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
