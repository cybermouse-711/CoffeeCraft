//
//  NetworkManager.swift
//  CoffeeCraft
//
//  Created by Elizaveta Medvedeva on 17.03.24.
//

import Foundation

//MARK: - Protocols
protocol INetworkManager {
    func fetchNetwork<T: Decodable>(_ type: T.Type, _ file: String, _ extensionFile: String, completion: @escaping(Result<T, Error>) -> Void)
}

///Класс для парсинга JSON файлов
//MARK: - NetworkManager
final class NetworkManager {
    
    private let jsonDecoder = JSONDecoder()
}

//MARK: - Extensions
extension NetworkManager: INetworkManager {
    func fetchNetwork<T>(_ type: T.Type, _ file: String, _ extensionFile: String, completion: @escaping (Result<T, Error>) -> Void) where T : Decodable {
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

