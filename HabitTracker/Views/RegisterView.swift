//
//  RegisterView.swift
//  HabitTracker
//
//  Created by Yulin Zheng on 9/1/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Sign Up",
                       subtitle: "Build Habits & Reach Goals!",
                       angle: 15,
                       background: Color("AppPink"))
            
            // Register Form
            Form {
                TextField("Username", text: $name)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                TextField("Email", text: $email)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $password)

                LoginButton(title: "Sign Up", background: Color("AppPink")) {
                    // action
                }
                .padding(.vertical)
            }
            
            Spacer()
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
