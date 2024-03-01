//
//  TableViewCell.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 01.03.24.
//

import UIKit

//MARK: - TableViewCell
final class TableViewCell: UITableViewCell {
    
    //MARK: - Private Properties
    private let label = UILabel()
    private let switchh = UISwitch()
 //   private let control = UIControl()
    
//   private var text = "text"
//   private var isOn = false
 //   private var array = ["text"]
    
    //MARK: - Init
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Metods
    func configure(_ text: String, _ isOn: Bool ) {
        label.text = text
        switchh.isOn = isOn
    }
}

//MARK: - Configure UI
private extension TableViewCell {
    func setupUI() {
        addSubview()
        
        setupConctraints()
        
        setupCell()
        setupLabel()
        setupSwitch()
  //      setupControl()
    }
}

//MARK: - Setup UI
private extension TableViewCell {
    
    func addSubview() {
        [label, switchh].forEach {
            addSubview($0)
        }
    }
    
    func setupCell() {
        backgroundColor = .systemBrown
    }
    
    func setupLabel() {
     //  label.text = text
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 25)
        label.textAlignment = .left
        label.numberOfLines = 1
    }
    
    func setupSwitch() {
     // switchh.isOn = isOn
        switchh.onTintColor = .black
    }
    
//    func setupControl() {
//        control.isEnabled = false
//    }
}

//MARK: - Constraints
private extension TableViewCell {
    func setupConctraints() {
        
        [label, switchh].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([ 
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            
            switchh.centerYAnchor.constraint(equalTo: centerYAnchor),
            switchh.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)
            
//            control.centerYAnchor.constraint(equalTo: centerYAnchor),
//            control.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)
        ])
    }
}
