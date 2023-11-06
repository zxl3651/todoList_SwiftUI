//
//  ToDoListViewViewModel.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import Foundation

/// ViewModel for list of items view
/// Primary tab
class ToDoListViewViewModel : ObservableObject {
    
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String) {
        
    }
}
