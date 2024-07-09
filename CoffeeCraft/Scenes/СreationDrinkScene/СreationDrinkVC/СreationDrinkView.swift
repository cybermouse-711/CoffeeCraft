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
    private let stackView = UIStackView()
 //   private let tableView = UITableView(frame: .zero, style: .grouped)
    private let createButton = CustomButton(Titles.createButton, .maxi)
    
    //Фейковые значения, подлежат удалению после парсинга джейсона
    private let dict1: [String: Bool] = ["dishes": true, "milk": false, "type": true]
    private let dict2: [String: [String]] = ["grinding": ["dishes1", "dishes2", "dishes3"], "variety": ["type1", "type2", "type3"], "roasting": ["type4", "type5", "type6"]]
    
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
        
 //       setupTableView()
        setupSelfView()
        setupStackView()
        setupCreateButton()
    }
}

//MARK: - Setup UI
private extension СreationDrinkView {
    func setupSelfView(){
        backgroundColor = UIColor(named: ColorSet.white)
    }
    
    func addSubViews() {
        [stackView, createButton].forEach {
            addSubview($0)
        }
    }
    
    func setupStackView() {
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.contentMode = .scaleToFill
        
        stackView.addArrangedSubview(
            CustomStackView("label1", ["action1", "action2"])
        )
        stackView.addArrangedSubview(
            CustomStackView("label2", true)
        )
    }
//
//    func setupTableView() {
//        tableView.backgroundColor = UIColor(named: ColorSet.white)
//        
//        tableView.dataSource = self
//        tableView.delegate = self
//        
//        tableView.register(TableViewCell.self, forCellReuseIdentifier: "Cell")
//        tableView.rowHeight = UITableView.automaticDimension
//        tableView.estimatedRowHeight = 44
//        
//    }
    
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
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(16)
            make.trailing.equalTo(-16)
            make.leading.equalTo(16)
            make.bottom.equalTo(createButton).offset(-150)
        }
        
//        tableView.snp.makeConstraints { make in
//            make.top.equalTo(safeAreaLayoutGuide)
//            make.trailing.equalTo(safeAreaLayoutGuide)
//            make.leading.equalTo(safeAreaLayoutGuide)
//            make.bottom.equalTo(createButton).offset(-150)
//        }
        
        createButton.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.bottom.equalTo(self).offset(-80)
        }
    }
}

////MARK: - UITableViewDataSource
//extension СreationDrinkView: UITableViewDataSource {
//    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        2
//       }
//    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        section == 0 ? TitlesofSection.titleforHeader0 : TitlesofSection.titleforHeader1
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        section == 0 ? dict2.keys.count : dict1.keys.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        
//        guard let customCell = cell as? TableViewCell else { return UITableViewCell() }
//        
//        switch indexPath.section {
//        case 0:
//            dict2.sorted( by:  {$0.key < $1.key} )
//            customCell.configureForMenu(indexPath, dict2)
//        case 1:
//            dict1.sorted( by:  {$0.key < $1.key} )
//            customCell.configureForSwitch(indexPath, dict1)
//        default:
//            break
//        }
//        return customCell
//    }
//}
//
////MARK: - UITableViewDelegate
//extension СreationDrinkView: UITableViewDelegate {
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//  
//        guard let cell = tableView.cellForRow(at: indexPath) as? TableViewCell else { return }
//
//        switch indexPath.section {
//        case 0:
//            cell.tapOnMenu(indexPath, dict2)
//            tableView.reloadRows(at: [indexPath], with: .automatic)
//        case 1:
//            cell.tapOnSwitch(indexPath, dict1)
//            tableView.reloadRows(at: [indexPath], with: .automatic)
//        default:
//            break
//        }
//    }
//}

