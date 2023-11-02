//
//  GoalList.swift
//  TodoList_toyproject
//
//  Created by 이성현 on 2023/11/02.
//

import SwiftUI

struct GoalList: View {
    
    @StateObject var todostore = TodoStore(todos: tododata)
    
    @State private var showImportance : Bool = false
    
    var filteredLists : [ToDo] {
        todostore.todos.filter{ $0.isimportance || !showImportance}
    }
    var body: some View {
        
        NavigationStack{
            List{
                Toggle(isOn: $showImportance){
                    Text("급한 일정만 보기!").bold()
                }
                
                ForEach (filteredLists) { todo in
                    NavigationLink {
                        GoalDetail(todo: todo)
                    } label: {
                        GoalRow(todo: todo)
                    }
                }
                
            }
            .navigationTitle(Text("TodoList"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(value: "Add") {
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                            .opacity(0.6)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
        }
        
    }
}

#Preview {
    GoalList()
}
