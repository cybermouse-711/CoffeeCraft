//
//  СreationDrinkView.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 09.02.2024.
//

import UIKit

//MARK: - СreationDrinkView
final class СreationDrinkView: UIView {
    
    //MARK: - Private Properties
    private let createButton = UIButton()
    
    //MARK: - Init
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
        setupCreateButton()
    }
}

//MARK: - Setup UI
private extension СreationDrinkView {
    func setupSelfView(){
        backgroundColor = .brown
    }
    
    func addSubViews() {
        addSubview(createButton)
    }
    
    func setupCreateButton() {
        createButton.setTitle(Constants.createButtonTitle, for: .normal)
        createButton.setTitleColor(.black, for: .normal)
        createButton.layer.cornerRadius = 30
        createButton.backgroundColor = .white
        createButton.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        
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
        createButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            createButton.widthAnchor.constraint(equalToConstant: 250),
            createButton.heightAnchor.constraint(equalToConstant: 70),
            createButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            createButton.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}

//MARK: - Constants
private extension СreationDrinkView {
    enum Constants {
        static let createButtonTitle: String = "Recipe drink"
    }
}
