//
//  ToDoListView.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        // users/<id>/todos/<entries> 여기서 id에 해당하는게 userId이므로 필요하다!
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions{
                            Button("Delete") {
                                Button {
                                    // Delete
                                    viewModel.delete(id: item.id)
                                } label: {
                                    Text("Delete")
                                }

                            }
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button(action: {
                    viewModel.showingNewItemView = true
                }, label: {
                    Image(systemName: "plus")
                })
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "Jtr8zCLTxUXWVUcx9p3VHcaMaRr2")
}
