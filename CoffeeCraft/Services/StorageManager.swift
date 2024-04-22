//
//  StorageManager.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 17.03.24.
//

import Foundation

//MARK: - Protocols
protocol IStorageManager {
    func fetchData<T: Decodable>(_ type: T.Type, _ file: String, _ extensionFile: String, completion: @escaping(Result<T, Error>) -> Void)
}

//MARK: - StorageManager
final class StorageManager {
    
    private let jsonDecoder = JSONDecoder()
}

//MARK: - Extensions
extension StorageManager: IStorageManager {
    func fetchData<T>(_ type: T.Type, _ file: String, _ extensionFile: String, completion: @escaping (Result<T, Error>) -> Void) where T : Decodable {
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
