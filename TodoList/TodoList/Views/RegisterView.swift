//
//  RegisterView.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name : String = ""
    @State var email : String = ""
    @State var password : String = ""
    
    var body: some View {
        
        VStack{
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .yellow)
            // Register Form
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButtonView(title: "Create Account",
                             background: .green
                ) {
                    // Attempt log in
                }
            }
            .offset(y: -50)
            
            //
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
