//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import Foundation
class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false 
    
    init(){
        
    }
    
    func save() {
        
    }
    
    var canSave: Bool{
        guard !title.trimmingCharacters(in:.whitespaces).isEmpty else{
            return false
        }
        // 86400 seconds subtracted, so making sure the due date is greater than yesterday
        guard dueDate >= Date().addingTimeInterval(-86400) else{
            return false
        }
        
        return true
    }
}
