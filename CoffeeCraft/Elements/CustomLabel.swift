//
//  CustomLabel.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 08.05.24.
//

import UIKit
import SnapKit

//MARK: - CustomLabel
///Класс для настройки кастомного текста
final class CustomLabel: UILabel {
    
    //MARK: Enums
    enum Size {
        case mini
        case middle
        case maxi
    }
    
    //MARK: Init
    init(_ title: String, _ size: CustomLabel.Size) {
        super.init(frame: .zero)
        
        switch size {
        case .mini:
            text = title
            font = UIFont.systemFont(ofSize: 15, weight: .regular)
            textColor = UIColor(named: ColorSet.text)
            textAlignment = textAlignment
            numberOfLines = 0
            
        case .middle:
            text = title
            font = UIFont.systemFont(ofSize: 20, weight: .regular)
            textColor = UIColor(named: ColorSet.text)
            textAlignment = textAlignment
            numberOfLines = 0
            
        case .maxi:
            text = title
            font = UIFont.systemFont(ofSize: 25, weight: .regular)
            textColor = UIColor(named: ColorSet.text)
            textAlignment = textAlignment
            numberOfLines = 0
        }
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
