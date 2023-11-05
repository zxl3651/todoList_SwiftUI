//
//  GoalRow.swift
//  TodoList_toyproject
//
//  Created by 이성현 on 2023/11/02.
//

import SwiftUI

struct GoalRow: View {
    
    var todo : ToDo
    
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "circle")
                    .foregroundColor(.gray)
                    .opacity(0.4)
            })
            Text(todo.goal)
            Spacer()
            if todo.isimportance {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            } else {
                Image(systemName: "star")
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    GoalRow(todo: TodoStore(todos: tododata).todos[0])
}
