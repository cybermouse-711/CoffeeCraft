//
//  StartView.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 09.02.2024.
//

import UIKit

//MARK: - StartView
final class StartView: UIView {
    
    //MARK: Private Properties
    private let startButton = UIButton()
    
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
private extension StartView {
    func setupUI() {
        addSubViews()
        
        setupConctraints()
        
        setupSelfView()
        setupStartButton()
    }
}

//MARK: - Setup UI
private extension StartView {
    func setupSelfView() {
        backgroundColor = .brown
    }
    
    func addSubViews() {
        addSubview(startButton)
    }
    
    func setupStartButton(){
        startButton.setTitle(Constants.startButtonTitle, for: .normal)
        startButton.setTitleColor(.black, for: .normal)
        startButton.layer.cornerRadius = 30
        startButton.backgroundColor = .white
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        
        startButton.addTarget(
            StartViewController(),
            action: #selector(StartViewController.goCreationDrinkVC),
            for: .touchUpInside
        )
    }
}

//MARK: - Constraints
private extension StartView {
    func setupConctraints() {
        startButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            startButton.widthAnchor.constraint(equalToConstant: 250),
            startButton.heightAnchor.constraint(equalToConstant: 70),
            startButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}

//MARK: - Constants
private extension StartView {
    enum Constants {
        static let startButtonTitle: String = "Create a drink"
    }
}
