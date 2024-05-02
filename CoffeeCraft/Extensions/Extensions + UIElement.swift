//
//  Extensions + UIElement.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 16.02.24.
//

import UIKit
import SnapKit

// MARK: - Extensions for UIButton
extension UIButton {

    ///Унифицированная кнопка
    func configure(button: UIButton, title: String) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor(named: ColorSet.white), for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = UIColor(named: ColorSet.brown)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        
        button.snp.makeConstraints { make in
            make.height.equalTo(70)
            make.width.equalTo(250)
        }
    }
    
    func setupMenu(button: UIButton, array: [String], handler: @escaping UIActionHandler) {
        var menu: [UIMenuElement] = []
        
        for element in array {
            menu.append(UIAction(title: element, handler: handler))
        }
    }
}

// MARK: - Extensions for UILabel
extension UILabel {
    
    //////Унифицированный текст маленького размера
    func configureMini(label: UILabel, title: String, textAlignment: NSTextAlignment){
        label.text = title
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = UIColor(named: ColorSet.black)
        label.textAlignment = textAlignment
        label.numberOfLines = 0
    }
    
    ///Унифицированный текст среднего размера
    func configureMiddle(label: UILabel, title: String, textAlignment: NSTextAlignment) {
        label.text = title
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.textColor = UIColor(named: ColorSet.black)
        label.textAlignment = textAlignment
        label.numberOfLines = 0
    }
    
    ///Унифицированный текст большого размера
    func configureMaxi(label: UILabel, title: String, textAlignment: NSTextAlignment) {
        label.text = title
        label.font = UIFont.systemFont(ofSize: 25, weight: .regular)
        label.textColor = UIColor(named: ColorSet.black)
        label.textAlignment = textAlignment
        label.numberOfLines = 0
    }
}

