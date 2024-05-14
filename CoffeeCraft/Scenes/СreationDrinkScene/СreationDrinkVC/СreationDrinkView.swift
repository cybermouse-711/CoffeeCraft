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
    private let createButton = CustomButton(Titles.createButton, .maxi)
    
    //Фейковые значения, подлежат удалению после парсинга джейсона
    private let dict1: [String: Bool] = ["dishes": true, "milk": false, "type": true]
    private let dict2: [String: [String]] = ["grinding": ["dishes1", "dishes2", "dishes3"], "variety": ["type1", "type2", "type3"], "roasting": ["type4", "type5", "type6"]]
    
    private var newSwitchs: [Bool] = []
    
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
        [tableView, createButton].forEach {
            addSubview($0)
        }
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
        section == 0 ? dict2.keys.count : dict1.keys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        guard let customCell = cell as? TableViewCell else { return UITableViewCell() }
        
        switch indexPath.section {
        case 0:
            customCell.configureForMenu(indexPath, dict2)
        case 1:
            customCell.configureForSwitch(indexPath, dict1)
        default:
            break
        }
        return customCell
    }
}

//MARK: - UITableViewDelegate
extension СreationDrinkView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        
//        guard let customCell = cell as? TableViewCell else { return }
//        
//        let cell: TableViewCell?
        
//        guard let cell = tableView.cellForRow(at: indexPath) as? TableViewCell else { return }
//
//        switch indexPath.section {
//        case 0:
//            var menu = arrays[indexPath.row]
//            cell.tapOnMenu("Test")
//        case 1:
//            let text = titles[indexPath.row]
//           var isOn = switchs[indexPath.row]
//            isOn.toggle()
//            newSwitchs.append(isOn)
//            cell.configureForSwitch(text, isOn)
//            
//            tableView.reloadRows(at: [indexPath], with: .automatic)
//        default:
//            break
//        }
        
//        if indexPath.section == 1 {
//            var isOn = switchs[indexPath.row]
//            isOn.toggle()
//        }
//
 //   
    //    tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}


