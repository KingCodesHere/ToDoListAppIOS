//
//  RegisterView.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import SwiftUI

struct RegisterView: View {
    @State var viewModel = RegisterViewViewModel()
    
    var body: some View {
       // Header
        VStack{
            // Header
            HeaderView(title: "Register", 
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: .orange)
            
            Form{
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // Create a button
                TLButton(title: "Create An Account", background: .green
                ){
                  // Attemp
                    viewModel.register()
                }
            }
            .scrollContentBackground(.hidden)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}

