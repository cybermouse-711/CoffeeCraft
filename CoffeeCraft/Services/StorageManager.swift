//
//  StorageManager.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 17.03.24.
//

import Foundation

//MARK: - StorageManager
final class StorageManager {
    static let shared = StorageManager()
    
    private init() {}
    
    func fetchModel<T: Decodable>(_ type: T.Type, _ file: String, completion: @escaping(Result<T, Error>) -> Void) {
        guard let url = Bundle.main.url(forResource: "file", withExtension: "json") else { return }
        
        let jsonDecoder = JSONDecoder()
        
        do {
            let data = try Data(contentsOf: url)
            let model = try jsonDecoder.decode(T.self, from: data)
            completion(.success(model))
        } catch {
            completion(.failure(error))
        }
    }
}

//MARK: - Constants
private extension StorageManager{
    enum File {
        static let dishes: String = "diches"
        static let typeCoffee: String = "type_coffee"
    }
}
