//
//  СreationDrinkView.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 09.02.2024.
//

import UIKit

//MARK: - СreationDrinkView
final class СreationDrinkView: UIView {
    
    //MARK: Private Properties
    private let tableView = UITableView(frame: .zero, style: .grouped)
    private let createButton = UIButton()
  
   private let titles: [String] = ["dishes", "milk", "type", "grinding", "variety", "roasting"]
    
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
private extension СreationDrinkView {
    func setupUI() {
        addSubViews()
        
        setupConctraints()
        
        setupTableView()
        setupSelfView()
        setupCreateButton()
    }
}

//MARK: - Setup UI
private extension СreationDrinkView {
    func setupSelfView(){
        backgroundColor = .systemBrown
    }
    
    func addSubViews() {
        addSubview(tableView)
        addSubview(createButton)
    }
    
    func setupTableView() {
        tableView.backgroundColor = .systemBrown
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
        
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
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        createButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([

            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -350),
            
            createButton.widthAnchor.constraint(equalToConstant: 250),
            createButton.heightAnchor.constraint(equalToConstant: 70),
            createButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            createButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80)
        ])
    }
}

//MARK: - UITableViewDataSource
extension СreationDrinkView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        guard let customCell = cell as? TableViewCell else { return UITableViewCell() }
        let text = titles[indexPath.row]
        customCell.configure(text, false)
        
        return customCell
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        guard let cell = cell as? TableViewCell else { return UITableViewCell() }
//        let list = titles[indexPath.row]
//        cell.configure(list, true)
//        return cell
//    }
}

//MARK: - UITableViewDelegate
extension СreationDrinkView: UITableViewDelegate {}

//MARK: - Constants
private extension СreationDrinkView {
    enum Constants {
        static let createButtonTitle: String = "Create a recipe"
    }
}

