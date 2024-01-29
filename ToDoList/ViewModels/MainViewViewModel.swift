//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject{
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init(){
        self.handler = Auth.auth().addStateDidChangeListener{ [weak self] _ , user in   // can use _ to represent Auth
            DispatchQueue.main.async{
                self?.currentUserId = user?.uid ?? "" //self? self optional to not cause memory leak
            }
    }
}
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil // if it != nil that means we are signed in
    }
}
