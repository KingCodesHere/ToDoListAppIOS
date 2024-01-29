//
//  ContentView.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            accountView
        } else{
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        // signed in
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem{
                    Label("Home", systemImage: "house")
        }
        
        ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
