//
//  LoginView.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                // Header
                HeaderView(title: "To Do List", subtitle: "Get thing done", angle: 15, background: .blue)
                
                // Login Form
                Form{
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log in", background: .pink){
                        // Attempt log in
                        
                    }

                }.scrollContentBackground(.hidden) // hidden background
         
                
                // Create Account
                VStack{
                    Text("New around here?")
 
                    NavigationLink("Create An Account",
                                   destination: RegisterView())
                }
                .padding(.bottom,50)
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    LoginView()
}
