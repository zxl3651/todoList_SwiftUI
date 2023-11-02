//
//  Car.swift
//  ListNavDemo
//
//  Created by 이성현 on 2023/11/02.
//

import Foundation

// Todo 리스트 모델
struct ToDo : Codable, Identifiable {
    var id : String
    var goal : String
    
    var description : String
    var isimportance : Bool
    
}

// 데이터 저장소 구조체를 추가
class TodoStore : ObservableObject {

    @Published var todos: [ToDo]
    
    init(todos: [ToDo]) {
        self.todos = todos
    }
}
