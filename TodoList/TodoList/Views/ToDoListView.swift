//
//  ToDoListView.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private var userId : String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button(action: {
                    viewModel.showingNewItemView = true
                }, label: {
                    Image(systemName: "plus")
                })
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
