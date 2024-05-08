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
    private let startButton = CustomButton(Titles.startButton, .maxi)
    
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
        backgroundColor = UIColor(named: ColorSet.lightGray)
    }
    
    func addSubViews() {
        addSubview(startButton)
    }
    
    func setupStartButton(){
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
            make.centerX.equalTo(self)
            make.centerY.equalTo(self)
        }
    }
}
