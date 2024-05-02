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
    
    //Фейковые значения, подлежат удалению после парсинга джейсона
    private let titles: [String] = ["dishes", "milk", "type",]
    private let titles2: [String] = ["grinding", "variety", "roasting"]
    private let arrays: [[String]] = [["dishes", "dishes", "dishes"], ["type", "type", "type"], ["type", "type", "type"]]
    
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
        createButton.configure(button: createButton, title: Titles.createButton)
        
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
            make.bottom.equalTo(createButton).offset(-150)
        }
        
        createButton.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.bottom.equalTo(self).offset(-80)
        }
    }
}

//MARK: - UITableViewDataSource
extension СreationDrinkView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
       }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        section == 0 ? TitlesofSection.titleforHeader0 : TitlesofSection.titleforHeader1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        section == 0 ? titles.count : titles2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        guard let customCell = cell as? TableViewCell else { return UITableViewCell() }
        
        switch indexPath.section {
        case 0:
            let text = titles[indexPath.row]
            customCell.configureForSwitch(text, false)
        default:
            let text = titles2[indexPath.row]
            let array = arrays[indexPath.row]
            customCell.configureForMenu(text, array)
        }
        
        return customCell
    }
}

//MARK: - UITableViewDelegate
extension СreationDrinkView: UITableViewDelegate {}


