//
//  Extensions + UILabel.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 16.02.24.
//

import UIKit

// MARK: - Extensions for UILabel
extension UILabel {
    
    ///Настройка интерфейса
    func getElementLabel(for label: UILabel, with text: String) {
        let label = label
        
        label.text = text
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 25)
        label.textAlignment = .left
        label.numberOfLines = 1
    }
}
