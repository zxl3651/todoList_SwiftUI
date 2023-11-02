//
//  GoalDetail.swift
//  TodoList_toyproject
//
//  Created by 이성현 on 2023/11/02.
//

import SwiftUI

struct GoalDetail: View {
    
    var todo : ToDo
    
    var body: some View {
        VStack{
            Text("목표에 대한 설명")
                .font(.headline)
                .bold()
            Text(todo.description)
        }
    }
}

#Preview {
    GoalDetail(todo: TodoStore(todos: tododata).todos[0])
}
