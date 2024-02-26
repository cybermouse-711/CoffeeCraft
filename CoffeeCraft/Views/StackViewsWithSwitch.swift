//
//  StackViewsWithSwitch.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 23.02.24.
//

import UIKit

final class StackView: UIStackView {
    let label = UILabel()
    let castomSwitch = UISwitch()
      
    func configure(label text: String, switch isOn: Bool) -> UIStackView {
        var sw = StackView()
        
        sw.axis = .horizontal
        sw.distribution = .fill
        sw.alignment = .leading
        
        [label, castomSwitch].forEach { subView in
            sw.addArrangedSubview(subView)
        }
        
        label.getElementLabel(for: label, with: text)
        
        castomSwitch.isOn = isOn
        castomSwitch.onTintColor = .black
        
        return sw
    }
}

