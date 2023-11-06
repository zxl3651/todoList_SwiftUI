//
//  ToDoListViewViewModel.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
/// Primary tab
class ToDoListViewViewModel : ObservableObject {
    
    @Published var showingNewItemView = false
    private let userid : String
    
    init(userid : String) {
        self.userid = userid
    }
    
    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userid)
            .collection("todos")
            .document(id)
            .delete()
    }
}
