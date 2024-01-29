//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false 
    
    init(){
        
    }
    
    func save() {
        guard canSave else{
            return
        }
        
        // Get current user id
        guard let uId = Auth.auth().currentUser?.uid else{
            return
        }
        
        // Create model
        let newId = UUID().uuidString // a new universally unique identifier
        let newItem = ToDoListItem(id: newId,
                                   title: title,
                                   dueDate: dueDate.timeIntervalSince1970,
                                   createdDate: Date().timeIntervalSince1970,
                                   isDone: false)
        
        // Save model
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document(newId) // new model ID
            .setData(newItem.asDictionary()) // a dictionary
        
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
