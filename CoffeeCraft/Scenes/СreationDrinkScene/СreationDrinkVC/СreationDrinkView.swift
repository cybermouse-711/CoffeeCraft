//
//  СreationDrinkView.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 09.02.2024.
//

import UIKit
import SnapKit

//MARK: - СreationDrinkView
final class СreationDrinkView: UIView {
    
    //MARK: Private Properties
    private let stackView = UIStackView()
    private let createButton = CustomButton(Titles.createButton, .maxi)
    
    //Фейковые значения, подлежат удалению после парсинга джейсона
    private let dict1: [String: Bool] = ["dishes": true, "milk": false, "type": true]
    private let dict2: [String: [String]] = ["grinding": ["dishes1", "dishes2", "dishes3"], "variety": ["type1", "type2", "type3"], "roasting": ["type4", "type5", "type6"]]
    
    //MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - Configure UI
private extension СreationDrinkView {
    func setupUI() {
        addSubViews()
        
        setupConctraints()
        
        setupSelfView()
        setupStackView()
        setupCreateButton()
    }
}

//MARK: - Setup UI
private extension СreationDrinkView {
    func setupSelfView(){
        backgroundColor = UIColor(named: ColorSet.scene)
    }
    
    func addSubViews() {
        [stackView, createButton].forEach {
            addSubview($0)
        }
    }
    
    func setupStackView() {
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.contentMode = .scaleToFill
        
        stackView.addArrangedSubview(
            CustomStackView("label1", ["action1", "action2"])
        )
        stackView.addArrangedSubview(
            CustomStackView("label2", true)
        )
    }
    
    func setupCreateButton() {
 
        createButton.addTarget(
            СreationDrinkViewController(),
            action: #selector(СreationDrinkViewController.goRecipeDrinkVC),
            for: .touchUpInside
        )
    }
 }

//MARK: - Constraints
private extension СreationDrinkView {
    func setupConctraints() {
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(16)
            make.trailing.equalTo(-16)
            make.leading.equalTo(16)
            make.bottom.equalTo(createButton).offset(-150)
        }
        
        createButton.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.bottom.equalTo(self).offset(-80)
        }
    }
}

