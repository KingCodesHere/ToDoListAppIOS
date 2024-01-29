//
//  Extensions.swift
//  ToDoList
//
//  Created by Junhao Li on 28/1/2024.
//

import Foundation

extension Encodable{
    func asDictionary() -> [String: Any]{
        guard let data = try? JSONEncoder().encode(self) else{
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:] // json or empty dictionary
        } catch{
            return [:]
        }
    }
}
