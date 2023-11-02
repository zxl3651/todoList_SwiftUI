//
//  AddGoal.swift
//  TodoList_toyproject
//
//  Created by 이성현 on 2023/11/02.
//

import SwiftUI

struct AddGoal: View {
    
    @State private var goal : String = ""
    @State private var desciption : String = ""
    
    var body: some View {
        List {
            VStack{
                InputGoal(title: "목표", inputdata: $goal)
                InputGoal(title: "메모", inputdata: $desciption)
            }
        }
    }
}

#Preview {
    AddGoal()
}


