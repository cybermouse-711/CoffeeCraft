//
//  StartView.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 09.02.2024.
//

import UIKit
import SnapKit

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
        startButton.snp.makeConstraints { make in
            make.height.equalTo(70)
            make.width.equalTo(250)
            make.centerX.equalTo(self)
            make.centerY.equalTo(self)
        }
    }
}

//MARK: - Constants
private extension StartView {
    enum Constants {
        static let startButtonTitle: String = "Create a drink"
    }
}
