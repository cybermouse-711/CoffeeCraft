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
    private var titleIngredient = CustomLabel("no data", .mini)
    
    private let switchIngredient = UISwitch()
    
    private let buttonIngredient = UIButton(primaryAction: nil)
    private var menuIngredient = UIMenu()
    private var menuChildren = [UIAction]()
    private let actionClosure = { (action: UIAction) in
        print(action.title)
    }
    
    ///Словарь на случай если в меню не выгрузятся значения
    private var defaultDict = ["no data": ["nil"]]
    
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
    func configureForSwitch(_ indexPath: IndexPath, _ dictionary: [String: Bool]) {
        let keysArray = Array(dictionary.keys)
        let valuesArray = Array(dictionary.values)
        
        let key = keysArray[indexPath.row]
        let value = valuesArray[indexPath.row]
        
        titleIngredient.text = key
        switchIngredient.isOn = value
        buttonIngredient.removeFromSuperview()
        
    }
    
    ///Метод для настройки ячейки с выпадающим списком
    func configureForMenu(_ indexPath: IndexPath, _ dictionary: [String: [String]]) {
        let keysArray = Array(dictionary.keys)
        let valuesArray = Array(dictionary.values)
        
        let key = keysArray[indexPath.row]
        let value = valuesArray[indexPath.row]
        
        titleIngredient.text = key
        setupMenuElement(value)
        switchIngredient.removeFromSuperview()
    }
    
    ///Метод для отработки нажатия на ячейку со свитчом
    func tapOnSwitch() {
        switchIngredient.isOn.toggle()
    }
    
    ///Метод для отработки нажатия на ячейку с выпадающим списком
    func setupOnMenu(_ array: [String]) {
        for element in array {
            menuChildren.append(UIAction(title: element, state: .on, handler: actionClosure))
        }
    }
    
    //MARK: Private Metods
    private func setupMenuElement(_ array: [String]) {
        for element in array {
            menuChildren.append(UIAction(title: element, handler: actionClosure))
        }
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
 //       setupActionClosure()
        setupMenuChildren()
        setupMenu()
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
        titleIngredient.textAlignment = .left
        titleIngredient.numberOfLines = 1
    }
    
    func setupSwitch() {
        switchIngredient.onTintColor = UIColor(named: ColorSet.brown)
        switchIngredient.thumbTintColor = UIColor(named: ColorSet.brown)
    }
    
//    func setupActionClosure() {
//        for (key, value) in zip(keys, values) {
//            menuChildren.append(UIAction(title: key, handler: actionClosure))
//        }
//    }
    
    func setupMenuChildren() {
        menuChildren = [UIAction(title: "Action", handler: actionClosure)]
    }
    
    func setupMenu() {
        menuIngredient = UIMenu(title: "Menu", options: [], children: menuChildren)
        
        for element in defaultDict.keys {
            menuChildren.append(UIAction(title: element, handler: actionClosure))
        }
    }
    
    func setupButton() {
        buttonIngredient.menu = menuIngredient
        buttonIngredient.showsMenuAsPrimaryAction = true
        buttonIngredient.changesSelectionAsPrimaryAction = true
        
        buttonIngredient.tintColor = UIColor(named: ColorSet.brown)
        buttonIngredient.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        buttonIngredient.addTarget(self, action: #selector(menuActionTriggered), for: .menuActionTriggered)
    }
    
    //FIXME: - Доработать метод
    @objc func menuActionTriggered() {
        print("Its OK")
    }
}

//MARK: - Constraints
private extension TableViewCell {
    func setupConctraints() {
        
        titleIngredient.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.leading.equalTo(self).offset(30)
        }
        
        switchIngredient.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.trailing.equalTo(self).offset(-30)
        }
        
        buttonIngredient.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.trailing.equalTo(self).offset(-30)
        }
    }
}
