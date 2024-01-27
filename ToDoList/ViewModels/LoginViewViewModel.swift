//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login(){
        guard validate() else{
            return
        }

        // try log in
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func validate() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,   // it will trim the white space and check if the email is empty
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            
            errorMessage = "Please fill in all fields"
            
            return false
        }
        
        // emial@foo.com
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please fill in valid email"
            
            return false
        }
     return true
    }
        
}
