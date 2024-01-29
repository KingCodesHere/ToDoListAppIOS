//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
        
    }
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // Action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView)
            {
                NewItemView(newItemPresented: $viewModel.showingNewItemView) //jump to new Item view. This binding allows the view to control and observe the value of showingNewItemView. If the value changes in the view, it will also be updated in the viewModel, and vice versa. This is a fundamental concept in SwiftUI for achieving reactive UI behavior.
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
