//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import Foundation

class RegisterViewViewModel: ObservableObject{
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init(){}
}
