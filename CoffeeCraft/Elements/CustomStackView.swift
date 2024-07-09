//
//  CustomStackView.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 08.07.24.
//

import UIKit
import SnapKit

//MARK: - CustomStackView
///Класс для настройки кастомного стека
final class CustomStackView: UIStackView {
    
    //MARK: Private properties
  //  private var titleIngredient = CustomLabel("No data", .mini)
//    private var menuButtonIngredient = CustomMenuButton("No data", ["No data"])
//    private var switchIngredient = UISwitch()

    //MARK: Init
    init(_ title: String, _ swytch: Bool) {
        super.init(frame: .zero)
        
        distribution = .fillEqually
        axis = .horizontal
        
        var titleIngredient = CustomLabel(title, .mini)
        var switchIngredient = UISwitch()
        
        addSubview(titleIngredient)
        addSubview(switchIngredient)
        
        titleIngredient.textAlignment = .left
        titleIngredient.numberOfLines = 1
        
        switchIngredient.isOn = swytch
        switchIngredient.onTintColor = UIColor(named: ColorSet.brown)
        switchIngredient.thumbTintColor = UIColor(named: ColorSet.gray)
        
        snp.makeConstraints { make in
            make.height.equalTo(30)
        }
        
        titleIngredient.snp.makeConstraints { make in
            make.leading.equalTo(16)
            make.centerY.equalTo(15)
        }
        
        switchIngredient.snp.makeConstraints { make in
            make.trailing.equalTo(16)
            make.centerY.equalTo(15)
        }
    }
    
    init(_ title: String, _ children: [String]) {
        super.init(frame: .zero)
        
        distribution = .fillEqually
        axis = .horizontal
        
        var titleIngredient = CustomLabel(title, .mini)
        var menuButtonIngredient = CustomMenuButton("Select...", children)
        
        addSubview(titleIngredient)
        addSubview(menuButtonIngredient)
        
        titleIngredient.text = title
        titleIngredient.textAlignment = .left
        titleIngredient.numberOfLines = 1
        
        snp.makeConstraints { make in
            make.height.equalTo(30)
        }
        
        titleIngredient.snp.makeConstraints { make in
            make.leading.equalTo(16)
            make.centerY.equalTo(15)
        }
        
        menuButtonIngredient.snp.makeConstraints { make in
            make.trailing.equalTo(16)
            make.centerY.equalTo(15)
        }
    }
    
    @available(*, unavailable)
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
