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
    private let tableView = UITableView()
    
    private let createButton = UIButton()

  //  private let drink: Drink!
  
   private let titles: [String] = ["dishes", "drink.milk", "type", "grinding", "variety", "roasting", "roasting"]
    
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
        setupTableView()
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
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
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

          //  tableView.heightAnchor.constraint(equalToConstant: 500),
            tableView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            createButton.widthAnchor.constraint(equalToConstant: 250),
            createButton.heightAnchor.constraint(equalToConstant: 70),
            createButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            createButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80)
        ])
    }
}

//MARK: - UITableViewDataSource
extension СreationDrinkView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        guard let cell = cell as? TableViewCell else { return UITableViewCell() }
        let list = titles[indexPath.row]
        cell.configure(list, true)
        return cell
    }
}

//MARK: - Constants
private extension СreationDrinkView {
    enum Constants {
        static let createButtonTitle: String = "Drink recipe"
    }
}

