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
    private var menuIngredient: UIMenu!
    private var menuChildren: [UIMenuElement] = []
    private let actionClosure = { (action: UIAction) in
        print(action.title)
    }
    
    ///Массив на случай если в меню не выгрузятся значения
    private var defaultArray = ["no data"]
    
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
    func configureForSwitch(_ text: String, _ isOn: Bool) {
        titleIngredient.text = text
        switchIngredient.isOn = isOn
        buttonIngredient.removeFromSuperview()
    }
    
    ///Метод для настройки ячейки с выпадающим списком
    func configureForMenu(_ text: String, _ array: [String]) {
        titleIngredient.text = text
        
        switchIngredient.removeFromSuperview()
    }
    
    ///Метод для отработки нажатия на ячейку со свитчом
    func tapOnSwitch() {
        switchIngredient.isOn.toggle()
    }
    
    ///Метод для отработки нажатия на ячейку с выпадающим списком
    func tapOnMenu(_ text: String) {
        menuChildren.append(UIAction(title: text, state: .on, handler: actionClosure))
    }
    
    //    func tapOnMenu(_ array: [String]) {
    //        for element in array {
    //            menuIngredient.append(UIAction(title: element, state: .on, handler: actionClosure))
    //        }
    //    }

    //MARK: Private Metods
    private func setupMenu(button: UIButton, array: [String], handler: @escaping UIActionHandler) {
        var menu: [UIMenuElement] = []
        
        for element in array {
            menu.append(UIAction(title: element, handler: handler))
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
        setupButton()
     //   setupMenu()
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
    
    func setupButton() {
        for element in defaultArray {
            menuChildren.append(UIAction(title: element, handler: actionClosure))
        }

       buttonIngredient.menu = UIMenu(options: .displayInline, children: menuChildren)
        buttonIngredient.showsMenuAsPrimaryAction = true
        buttonIngredient.changesSelectionAsPrimaryAction = true
        
        buttonIngredient.tintColor = UIColor(named: ColorSet.brown)
        buttonIngredient.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .regular)
    }
    
    func setupMenu() {
        
        menuIngredient = UIMenu(title: "Test", options: .displayInline, children: menuChildren)
        
        for element in defaultArray {
            menuChildren.append(UIAction(title: element, handler: actionClosure))
        }
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
