//
//  User.swift
//  VictorTest
//
//  Created by Артем Петрюк on 16.05.2023.
//

import Foundation

struct User: Codable, Identifiable {
    let id = UUID()
    let name: String
    let age: Int
}
