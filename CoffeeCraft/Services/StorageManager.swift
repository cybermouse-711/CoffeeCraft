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
    
    private let jsonDecoder = JSONDecoder()
    
    private init() {}
    
    func fetchData<T: Decodable>(_ type: T.Type, _ file: String, _ extensionFile: String, completion: @escaping(Result<T, Error>) -> Void) {
        guard let url = Bundle.main.url(forResource: file, withExtension: extensionFile) else { return }
        
        do {
            let data = try Data(contentsOf: url)
            let model = try jsonDecoder.decode(T.self, from: data)
            completion(.success(model))
        } catch {
            print(error.localizedDescription)
            completion(.failure(error))
        }
    }
}

//MARK: - Constants
private extension StorageManager{
    enum File {
        static let dishes: String = "dishes"
        static let typeCoffee: String = "type_coffee"
    }
    
    enum ExtensionFile {
        static let json = "json"
    }
}
