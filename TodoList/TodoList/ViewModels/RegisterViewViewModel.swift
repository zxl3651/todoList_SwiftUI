//
//  RegisterViewViewModel.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import FirebaseFirestore
import FirebaseAuth
import FirebaseStorage
import FirebaseDatabase
import Foundation

class RegisterViewViewModel : ObservableObject {
    
    @Published var name : String = ""
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var imgUrl : String = ""
    
    init() {}
    
    func addImg() {
        let storage = Storage.storage()
        let storageRef = storage.reference()
        
        guard let imageData = UIImage(named: "AppIcon")?.jpegData(compressionQuality: 0.5) else {
            return
        }
        
        let imageRef = storageRef.child("images/AppIcon.jpg")
        
        imageRef.putData(imageData, metadata: nil) { error in
            print("업로드 완료.")
        }
    }
    
    func downloadImg() {
        let ref = Storage.storage().reference().child("images/AppIcon.jpg")
        
        ref.downloadURL { url, error in
            if let error = error {
                print("에러 발생")
            } else {
                self.imgUrl = url?.absoluteString ?? ""
            }
        }
    }
    
    func deleteImg() {
        
        let storage = Storage.storage()
        let storageRef = storage.reference()
        let desertRef = storageRef.child("images/AppIcon.jpg")

        // Delete the file
        desertRef.delete { error in
          if let error = error {
            // Uh-oh, an error occurred!
              print("에러 발생")
          } else {
            // File deleted successfully
              print("제거 성공")
          }
        }
        
    }
        

    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String) {
        // User 객체를 생성
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        
        // 데이터베이스에 삽입
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        
        guard password.count >= 6 else {
            return false
        }
        
        return true
    }
    
}
