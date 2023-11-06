//
//  TLButtonView.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/06.
//

import SwiftUI

struct TLButtonView: View {
    let title : String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TLButtonView(title: "Value", background: .pink) {
        //Action
    }
}
