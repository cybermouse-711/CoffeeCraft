//
//  TableViewCell.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 01.03.24.
//

import UIKit
import SnapKit

//MARK: - TableViewCell
final class TableViewCell: UITableViewCell {
    
    //MARK: Private Properties
    private let titleIngredient = UILabel()
    
    private let switchIngredient = UISwitch()
    
    private let buttonIngredient = UIButton(primaryAction: nil)
    private var menuIngredient = [UIMenuElement]()
    private let actionClosure = { (action: UIAction) in
        print(action.title)
    }
    //deleted
    private let array = ["a", "b"]
    
    //MARK: Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Metods
    ///Метод для настройки ячейки с возможность логического выбора
    func configureForSwitch(text: String, isOn: Bool ) {
        titleIngredient.text = text
        switchIngredient.isOn = isOn
        buttonIngredient.removeFromSuperview()
    }
    
    ///Метод для настройки ячейки с выпадающим списком
    func configureForMenu(text: String, array: [String] ) {
        titleIngredient.text = text
        buttonIngredient.setupMenu(button: buttonIngredient, array: array, handler: actionClosure)
        switchIngredient.removeFromSuperview()
    }
}

//MARK: - Configure UI
private extension TableViewCell {
    func setupUI() {
        addSubview()
        
        setupConctraints()
        
        setupCell()
        setupLabel()
        setupSwitch()
        setupButton()
    }
}

//MARK: - Setup UI
private extension TableViewCell {
    
    func addSubview() {
        [titleIngredient, switchIngredient, buttonIngredient].forEach {
            addSubview($0)
        }
    }
    
    func setupCell() {
        backgroundColor = UIColor(named: ColorSet.lightGray)
    }
    
    func setupLabel() {
        titleIngredient.textColor = UIColor(named: ColorSet.black)
        titleIngredient.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        titleIngredient.textAlignment = .left
        titleIngredient.numberOfLines = 1
    }
    
    func setupSwitch() {
        switchIngredient.onTintColor = UIColor(named: ColorSet.brown)
        switchIngredient.thumbTintColor = UIColor(named: ColorSet.brown)
    }
    
//    func setupMenu(button: UIButton, array: [String]) {
//        for element in array {
//            menuIngredient.append(UIAction(title: element, handler: actionClosure))
//        }
//    }
    
    func setupButton() {
        buttonIngredient.menu = UIMenu(options: .displayInline, children: menuIngredient)
        buttonIngredient.showsMenuAsPrimaryAction = true
        buttonIngredient.changesSelectionAsPrimaryAction = true
        
        buttonIngredient.tintColor = UIColor(named: ColorSet.brown)
        buttonIngredient.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .regular)
    }
}

//MARK: - Constraints
private extension TableViewCell {
    func setupConctraints() {
        
//        titleIngredient.snp.makeConstraints { make in
//            make.centerY.equalTo(self)
//            make.leading.equalTo(self).offset(30)
//        }
//        
//        switchIngredient.snp.makeConstraints { make in
//            make.centerY.equalTo(self)
//            make.trailing.equalTo(self).offset(-30)
//        }
//        
//        buttonIngredient.snp.makeConstraints { make in
//            make.centerY.equalTo(self)
//            make.trailing.equalTo(self).offset(-30)
//        }
        
        [titleIngredient, switchIngredient, buttonIngredient].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([ 
            titleIngredient.centerYAnchor.constraint(equalTo: centerYAnchor),
            titleIngredient.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            
            switchIngredient.centerYAnchor.constraint(equalTo: centerYAnchor),
            switchIngredient.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            buttonIngredient.centerYAnchor.constraint(equalTo: centerYAnchor),
            buttonIngredient.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)
      
        ])
    }
}
