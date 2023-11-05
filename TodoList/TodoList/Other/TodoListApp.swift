//
//  TodoListApp.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import SwiftUI
import FirebaseCore

@main
struct TodoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
