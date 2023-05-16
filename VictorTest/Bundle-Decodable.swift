//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Артем Петрюк on 31.01.2022.
//

import Foundation

extension Bundle {
    //Фунция позволяющая декодировать файл JSON из App Bundle
    func decode<T: Codable>(_ file: String) -> T {
        //Получаем URL Для названия файнла
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locale \(file) in bundle")
        }
        
        //Загружаем данные по URL
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        //Декодируюм данные 
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        return loaded
    }
}
