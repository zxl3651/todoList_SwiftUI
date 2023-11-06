//
//  User.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval // 언제 회원가입했는지
}
