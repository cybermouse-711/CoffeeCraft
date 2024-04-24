//
//  СreationDrinkView.swift
//  CoffeeCraft
//
//  Created by Елизавета Медведева on 09.02.2024.
//

import UIKit
import SnapKit

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
        backgroundColor = UIColor(named: ColorSet.lightGray)
    }
    
    func addSubViews() {
        addSubview(tableView)
        addSubview(createButton)
    }
    
    func setupTableView() {
        tableView.backgroundColor = UIColor(named: ColorSet.lightGray)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
        
    }
    
    func setupCreateButton() {
        createButton.setTitle(Titles.createButton, for: .normal)
        createButton.setTitleColor(.black, for: .normal)
        createButton.layer.cornerRadius = 30
        createButton.backgroundColor = UIColor(named: ColorSet.brown)
        createButton.setTitleColor(UIColor(named: ColorSet.black), for: .normal)
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
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide)
            make.trailing.equalTo(safeAreaLayoutGuide)
            make.leading.equalTo(safeAreaLayoutGuide)
            make.bottom.equalTo(createButton).offset(-350)
        }
        
        createButton.snp.makeConstraints { make in
            make.height.equalTo(70)
            make.width.equalTo(250)
            make.centerX.equalTo(self)
            make.bottom.equalTo(self).offset(-80)
        }
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


