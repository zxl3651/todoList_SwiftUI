//
//  ContentView.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            ToDoListView()
        } else {
            LoginView()
        }
    
    }
}

#Preview {
    MainView()
}
