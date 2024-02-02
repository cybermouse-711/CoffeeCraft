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
        setupUI()
      
    }

}

//MARK: - Configure UI
private extension StartViewController {
    func setupUI() {
        addSubViews()
        
        setupConctraints()
        
        setupSelfView()
        setupStartButton()
    }
}

//MARK: - Setup UI
private extension StartViewController {
    func setupSelfView() {
        view.backgroundColor = .systemBrown
    }
    
    func addSubViews() {
        view.addSubview(startButton)
    }
    
    func setupStartButton(){
        startButton.setTitle(Constants.startButtonTitle, for: .normal)
        startButton.setTitleColor(.black, for: .normal)
        startButton.layer.cornerRadius = 30
        startButton.backgroundColor = .white
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
    }
}

//MARK: - Constraints
private extension StartViewController {
    func setupConctraints() {
        startButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            startButton.widthAnchor.constraint(equalToConstant: 250),
            startButton.heightAnchor.constraint(equalToConstant: 70),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

//MARK: - Constants
private extension StartViewController {
    enum Constants {
        static let startButtonTitle: String = "Create a drink"
    }
}
