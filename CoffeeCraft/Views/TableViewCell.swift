//
//  TableViewCell.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 01.03.24.
//

import UIKit

//MARK: - TableViewCell
final class TableViewCell: UITableViewCell {
    
    //MARK: - Private Properties
    private let titleIngredient = UILabel()
    private let switchIngredient = UISwitch()
    
    //MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Metods
    func configure(_ text: String, _ isOn: Bool ) {
        titleIngredient.text = text
        switchIngredient.isOn = isOn
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
    }
}

//MARK: - Setup UI
private extension TableViewCell {
    
    func addSubview() {
        [titleIngredient, switchIngredient].forEach {
            addSubview($0)
        }
    }
    
    func setupCell() {
        backgroundColor = UIColor(named: ColorSet.lightGray)
    }
    
    func setupLabel() {
        titleIngredient.textColor = UIColor(named: ColorSet.black)
        titleIngredient.font = UIFont.systemFont(ofSize: 25)
        titleIngredient.textAlignment = .left
        titleIngredient.numberOfLines = 1
    }
    
    func setupSwitch() {
        switchIngredient.onTintColor = UIColor(named: ColorSet.brown)
        switchIngredient.thumbTintColor = UIColor(named: ColorSet.brown)
    }
}

//MARK: - Constraints
private extension TableViewCell {
    func setupConctraints() {
        
        [titleIngredient, switchIngredient].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([ 
            titleIngredient.centerYAnchor.constraint(equalTo: centerYAnchor),
            titleIngredient.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            
            switchIngredient.centerYAnchor.constraint(equalTo: centerYAnchor),
            switchIngredient.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)

        ])
    }
}
