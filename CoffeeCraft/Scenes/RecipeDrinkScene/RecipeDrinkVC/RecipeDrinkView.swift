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
    private let recipeDrinkImage = UIImageView()
    private let recipeDrinkLabel = CustomLabel(Titles.recipeDrinkLabel, .middle)
    
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
        setupRecipeDrinkImage()
        setupRecipeDrinkLabel()
    }
}

//MARK: - Setup UI
private extension RecipeDrinkView {
    func setupSelfView() {
        backgroundColor = UIColor(named: ColorSet.gray)
    }
    
    func addSubViews() {
        [recipeDrinkImage, recipeDrinkLabel].forEach {
            addSubview($0)
        }
    }
    
    func setupRecipeDrinkImage(){
        recipeDrinkImage.image = UIImage(named: IconsSet.mokaPot)
        recipeDrinkImage.layer.backgroundColor = .none
        recipeDrinkImage.tintColor = UIColor(named: ColorSet.brown)
    }
    
    func setupRecipeDrinkLabel(){
        recipeDrinkLabel.textAlignment = .center
    }
}

//MARK: - Constraints
private extension RecipeDrinkView {
    func setupConctraints() {
        recipeDrinkImage.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.centerX.equalTo(self)
            make.top.equalTo(self).offset(150)
        }
        
        recipeDrinkLabel.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(recipeDrinkImage.snp.bottom).offset(30)
        }
    }
}
