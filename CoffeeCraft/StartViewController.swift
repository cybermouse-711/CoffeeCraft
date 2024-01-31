//
//  StartViewController.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 01.02.2024.
//

import UIKit

//MARK: - StartViewController
final class StartViewController: UIViewController {
    
    private var startButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
      
    }


}

//MARK: - Settings View
private extension StartViewController {
    func setupView() {
        view.backgroundColor = .systemBrown
        
        addSubViews()
        setupStartButton()
        setupLayout()
    }
    
}

//MARK: - Settings
private extension StartViewController {
    func addSubViews() {
        view.addSubview(startButton)
    }
    
    func setupStartButton(){
        startButton.setTitle("Create a drink", for: .normal)
        startButton.setTitleColor(.black, for: .normal)
        startButton.layer.cornerRadius = 15
        startButton.backgroundColor = .white
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
    }
    
}

//MARK: - Layout
private extension StartViewController {
    func setupLayout() {
        startButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
}
