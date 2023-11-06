//
//  RegisterView.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import SwiftUI

struct RegisterView: View {
    
    @State var test : String = ""
    
    var body: some View {
        
        VStack{
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: 15, background: .yellow)
            // Register Form
            Form{
                VStack{
                    TextField("입력하세요", text: $test)
                        .textFieldStyle(DefaultTextFieldStyle())
                }
            }
            
            //
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
