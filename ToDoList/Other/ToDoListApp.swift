//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure() // configure googleservice-info, check file is valid
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
