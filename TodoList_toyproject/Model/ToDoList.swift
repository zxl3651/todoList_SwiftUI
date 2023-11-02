//
//  ToDoList.swift
//  TodoList_toyproject
//
//  Created by 이성현 on 2023/11/02.
//

import Foundation
import SwiftUI

class ToDoList: Codable, Identifiable {
    var id: String
    var name : String
    var goal : String
    var isimportance : Bool
    
}

