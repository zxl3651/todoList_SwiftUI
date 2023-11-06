//
//  LoginViewViewModel.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
    
    }
    
    func login() {
        
        guard validate() else {
            return
        }
        
        // Try Log in
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    private func validate() -> Bool {
        errorMessage = "" // login() 이 실행될 때 초기화해주기!
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else { // 만약 공백만 입력하더라도 trimmingCharacters를 통해 공백인지 알수있다.
            
            errorMessage = "Please fill in all fields"
            return false
        }
        
        // email@foo.com
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email."
            return false
        }
        
        return true
    }
}
