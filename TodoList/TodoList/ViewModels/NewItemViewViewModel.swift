//
//  NewItemViewViewModel.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import Foundation

class NewItemViewViewModel : ObservableObject {
    @Published var title: String = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() {}
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
