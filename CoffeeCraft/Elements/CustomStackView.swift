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
        
        axis = .horizontal
        alignment = .center
        distribution = .equalCentering
        contentMode = .scaleToFill
        
        let titleIngredient = CustomLabel(title, .mini)
        let switchIngredient = UISwitch()
        
        addArrangedSubview(titleIngredient)
        addArrangedSubview(switchIngredient)
        
        titleIngredient.textAlignment = .left
        titleIngredient.numberOfLines = 1
        
        switchIngredient.isOn = swytch
        switchIngredient.onTintColor = UIColor(named: ColorSet.brown)
        switchIngredient.thumbTintColor = UIColor(named: ColorSet.gray)
        
        snp.makeConstraints { make in
            make.height.equalTo(30)
        }
    }
    
    init(_ title: String, _ children: [String]) {
        super.init(frame: .zero)
        
        axis = .horizontal
        alignment = .center
        distribution = .equalCentering
        contentMode = .scaleToFill
        
        let titleIngredient = CustomLabel(title, .mini)
        let menuButtonIngredient = CustomMenuButton("Select...", children)
        
        addArrangedSubview(titleIngredient)
        addArrangedSubview(menuButtonIngredient)
        
        titleIngredient.text = title
        titleIngredient.textAlignment = .left
        titleIngredient.numberOfLines = 1
        
        snp.makeConstraints { make in
            make.height.equalTo(30)
        }
    }
    
    @available(*, unavailable)
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
