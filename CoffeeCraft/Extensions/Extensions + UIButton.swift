//
//  Extensions + UIButton.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 16.02.24.
//

import UIKit

// MARK: - Extensions for UIButton
extension UIButton {
    func getElementButton(for button: UIButton, with text: String) {
        let button = button
        
        button.setTitle(text, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .medium)
    }
    
//TODO: - Fixed metod
    /*
    func getConstraintButton(for button: UIButton) {
        let button = button
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 250),
            button.heightAnchor.constraint(equalToConstant: 50),
           // button.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
     */
}
