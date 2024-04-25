//
//  Extensions + UIButton.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 16.02.24.
//

import UIKit

// MARK: - Extensions for UIButton
extension UIButton {

    ///Унифицированная кнопка
    func setupButton(title: String) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor(named: ColorSet.white), for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = UIColor(named: ColorSet.brown)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        
        return button
    }
}

// MARK: - Extensions for UILabel
extension UILabel {
    //////Унифицированный текст большого размера
    ///func setupMiddlLabel(title: String) -> UILabel {
    func setupMiniLabel(title: String) -> UILabel {
        let label = UILabel()
        label.text = title
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = UIColor(named: ColorSet.black)
        
        return label
    }
    
    ///Унифицированный текст среднего размера
    func setupMiddleLabel(title: String) -> UILabel {
        let label = UILabel()
        label.text = title
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.textColor = UIColor(named: ColorSet.black)
        
        return label
    }
    
    ///Унифицированный текст маленького размера
    func setupMaxiLabel(title: String) -> UILabel {
        let label = UILabel()
        label.text = title
        label.font = UIFont.systemFont(ofSize: 25, weight: .regular)
        label.textColor = UIColor(named: ColorSet.black)
        
        return label
    }
}

