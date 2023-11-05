//
//  HeaderView.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.pink)
                .rotationEffect(Angle(degrees: 15))
                
            
            VStack{
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundStyle(.white)
                    .bold()
                
                Text("Get things done")
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
            }
            .padding(.top, 30)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
