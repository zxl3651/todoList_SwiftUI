//
//  InputGoal.swift
//  TodoList_toyproject
//
//  Created by 이성현 on 2023/11/02.
//

import SwiftUI

struct InputGoal: View {
    
    var title : String
    @Binding var inputdata : String
    
    var body: some View {
        VStack{
            Text(title).bold()
            TextField("\(title)를(을) 입력하세요.", text: $inputdata)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

//#Preview {
//    InputGoal(title: "테스트", inputdata: <#T##String#>)
//}
