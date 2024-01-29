//
//  User.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
