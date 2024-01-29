//
//  NewItemView.swift
//  ToDoList
//
//  Created by Junhao Li on 27/1/2024.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top,100)
            
            Form{
                //Title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // Button
                TLButton(title: "Save",
                         background: .green){
                    if viewModel.canSave{
                        viewModel.save()
                        newItemPresented = false // make the tab to go away
                    } else {
                        viewModel.showAlert = true
                    }
                }
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"), message: Text("Please fill in all fields and select due date that is today or newer"))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in}))
}
