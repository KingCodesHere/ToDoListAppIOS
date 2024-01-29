//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id:String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    //if your function changes some of the struct's properties, it needs to be marked with mutating so that Swift will refuse to use it if your struct instance is a constant
    //The underscore is used for the external parameter name of the state parameter. This means that when calling this method, you can omit the parameter name, and it will be inferred. Such as someObject.setDone(true)
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
