//
//  CustomButton.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 08.05.24.
//

import UIKit
import SnapKit

//MARK: - CustomButton
///Класс для настройки кастомной кнопки
final class CustomButton: UIButton {
    
    //MARK: Enums
    enum Size {
        case mini
        case maxi
    }
    
    //MARK: Init
    init(_ title: String, _ size: CustomButton.Size) {
        super.init(frame: .zero)
        
        switch size {
        case .mini:
            setTitle(title, for: .normal)
            setTitleColor(UIColor(named: ColorSet.textWhite), for: .normal)
            layer.cornerRadius = 25
            backgroundColor = UIColor(named: ColorSet.buttonBrown)
            titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
            
            snp.makeConstraints { make in
                make.height.width.equalTo(50)
            }
            
        case .maxi:
            setTitle(title, for: .normal)
            setTitleColor(UIColor(named: ColorSet.textWhite), for: .normal)
            layer.cornerRadius = 30
            backgroundColor = UIColor(named: ColorSet.buttonBrown)
            titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
            
            snp.makeConstraints { make in
                make.height.equalTo(70)
                make.width.equalTo(250)
            }
        }
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
