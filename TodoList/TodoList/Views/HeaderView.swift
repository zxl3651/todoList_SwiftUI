//
//  HeaderView.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import SwiftUI

struct HeaderView: View {
    let title : String
    let subtitle : String
    let angle : Double
    let background : Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
                
            
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundStyle(.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
            }
            .padding(.top, 80)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "SubTitle", angle: 15, background: .blue)
}
