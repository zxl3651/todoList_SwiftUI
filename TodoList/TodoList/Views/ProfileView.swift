//
//  ProfileView.swift
//  TodoList
//
//  Created by 이성현 on 2023/11/05.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.blue)
                    .frame(width: 125, height: 125)
                
                // Info: Name, Email, Member since
                VStack (alignment: .leading) {
                    HStack {
                        Text("Name")
                        Text("lee seong hyeon")
                    }
                    HStack {
                        Text("Email")
                        Text("lee seong hyeon")
                    }
                    HStack {
                        Text("Member Since: ")
                        Text("lee seong hyeon")
                    }
                }
                
                // Sign out
                TLButtonView(title: "Log Out", background: .red) {
                    viewModel.logout()
                }
                
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
