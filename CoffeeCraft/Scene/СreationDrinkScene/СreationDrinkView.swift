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
    
    private let creationLabels = [UILabel]()
    
//    private let drink: Drink!
//    
//    private let titles = ["\(drink.dishes)", "\(drink.milk)", "\(drink.type)", "\(drink.grinding)", "\(drink.variety)", "\(drink.roasting)", "\(drink.roasting)"]
  
   // private let titles: [String] = ["dishes", "drink.milk", "type", "grinding", "variety", "roasting", "roasting"]
    
    private let dishesLabel = UILabel()
    private let milkLabel = UILabel()
    private let typeLabel = UILabel()
    private let grindingLabel = UILabel()
    private let varietyLabel = UILabel()
    private let roastingLabel = UILabel()
    private let temperatureLabel = UILabel()
    private let sugarLabel = UILabel()
    private let honeyLabel = UILabel()
    private let spicesLabel = UILabel()
    private let syrupLabel = UILabel()
    
    private let stackViewLabel = UIStackView()
    
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
        setupStackViewLabel()
  //      setupLabels()
        setupDishesLabel()
        setupMilkLabel()
        setupTypeLabel()
        setuphoneyLabel()
        setupsugarLabel()
        setupvarietyLabel()
        setupgrindingLabel()
        setuproastingLabel()
        setuptemperatureLabel()
        setupspicesLabel()
        setupsyrupLabel()
    }
}

//MARK: - Setup UI
private extension СreationDrinkView {
    func setupSelfView(){
        backgroundColor = .systemBrown
    }
    
    func addSubViews() {
        addSubview(createButton)
        addSubview(stackViewLabel)
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
    
    func setupStackViewLabel(){
        stackViewLabel.axis = .vertical
        stackViewLabel.distribution = .fill
        stackViewLabel.spacing = 20
        
        //        creationLabels.forEach { subView in
        //            stackViewLabel.addArrangedSubview(subView)
        //        }
        //    }
        //
        //    func setupLabels() {
        //        for (label, title) in zip(creationLabels, titles) {
        //            label.getElementLabel(for: label, with: title)
        //        }
        //    }
        
        [dishesLabel, milkLabel, typeLabel, grindingLabel, varietyLabel, roastingLabel, roastingLabel, temperatureLabel, sugarLabel, honeyLabel, spicesLabel, syrupLabel
        ].forEach { subView in
            stackViewLabel.addArrangedSubview(subView)
        }
    }
    
    func setupDishesLabel() {
        dishesLabel.getElementLabel(for: dishesLabel, with: "Dishes")
    }
    
    func setupMilkLabel() {
        milkLabel.getElementLabel(for: milkLabel, with: "Milk")
    }
    
    func setupTypeLabel() {
        typeLabel.getElementLabel(for: typeLabel, with: "Type")
    }
    
    func setupgrindingLabel() {
        grindingLabel.getElementLabel(for: grindingLabel, with: "Grinding")
    }
    
    func setupvarietyLabel() {
        varietyLabel.getElementLabel(for: varietyLabel, with: "Variety")
    }
    
    func setuproastingLabel() {
        roastingLabel.getElementLabel(for: roastingLabel, with: "Roasting")
    }
    
    func setuptemperatureLabel() {
        temperatureLabel.getElementLabel(for: temperatureLabel, with: "Temperature")
    }
    
    func setupsugarLabel() {
        sugarLabel.getElementLabel(for: sugarLabel, with: "Sugar")
    }
    
    func setuphoneyLabel() {
        honeyLabel.getElementLabel(for: honeyLabel, with: "Honey")
    }
    
    func setupspicesLabel() {
        spicesLabel.getElementLabel(for: spicesLabel, with: "Spices")
    }
    
    func setupsyrupLabel() {
        syrupLabel.getElementLabel(for: syrupLabel, with: "Syrup")
    }
}

//MARK: - Constraints
private extension СreationDrinkView {
    func setupConctraints() {
        stackViewLabel.translatesAutoresizingMaskIntoConstraints = false
        createButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackViewLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            stackViewLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackViewLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8),
            
            createButton.widthAnchor.constraint(equalToConstant: 250),
            createButton.heightAnchor.constraint(equalToConstant: 70),
            createButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            createButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -100)
        ])
    }
}

    //MARK: - Constants
    private extension СreationDrinkView {
        enum Constants {
            static let createButtonTitle: String = "Recipe drink"
        }
    }
    
