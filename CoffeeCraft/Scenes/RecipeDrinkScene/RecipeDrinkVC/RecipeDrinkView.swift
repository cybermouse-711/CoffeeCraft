//
//  RecipeDrinkView.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 14.02.2024.
//

import UIKit

//MARK: - RecipeDrinkView
final class RecipeDrinkView: UIView {
    
    //MARK: Private Properties
    private let recipeDrinkLabel = UILabel()
    
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
private extension RecipeDrinkView {
    func setupUI() {
        addSubViews()
        
        setupConctraints()
        
        setupSelfView()
        setupStartButton()
    }
}

//MARK: - Setup UI
private extension RecipeDrinkView {
    func setupSelfView() {
        backgroundColor = UIColor(named: ColorSet.gray)
    }
    
    func addSubViews() {
        addSubview(recipeDrinkLabel)
    }
    
    func setupStartButton(){
        recipeDrinkLabel.configureMiddle(label: recipeDrinkLabel, title: Titles.recipeDrinkLabel , textAlignment: .center)
    }
}

//MARK: - Constraints
private extension RecipeDrinkView {
    func setupConctraints() {
        recipeDrinkLabel.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.centerY.equalTo(self)
        }
    }
}
