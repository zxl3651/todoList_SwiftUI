//
//  RegisterView.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import SwiftUI
import Kingfisher

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
   
    var body: some View {
        
        VStack{
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .yellow)
            // Register Form
            Form{
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButtonView(title: "Create Account",
                             background: .green
                ) {
                    // Attempt log in
                    viewModel.register()
                }
            }
            .offset(y: -50)
            
            Button("이미지 넣기"){
                viewModel.addImg()
            }
            Button("이미지 가져오기"){
                viewModel.downloadImg()
            }
            KFImage(URL(string: viewModel.imgUrl))
                .resizable()
                .aspectRatio(contentMode: .fit)
            Button("이미지 삭제"){
                viewModel.deleteImg()
            }
            //
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
