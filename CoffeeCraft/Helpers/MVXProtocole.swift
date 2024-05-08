//
//  MVXProtocole.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 22.04.24.
//

import UIKit

///Базовый метод для переходов
protocol BaseRouting {
    func routeTo(target: Any)
    init(viewController: UIViewController)
}
