//
//  ProfileView.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
