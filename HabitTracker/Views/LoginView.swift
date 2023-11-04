//
//  LoginView.swift
//  HabitTracker
//
//  Created by Yulin Zheng on 9/1/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "Habit Tracker",
                           subtitle: "Build Habits & Reach Goals!",
                           angle: -15,
                           background: Color("AppPurple"))

                // Login Form
                Form {
                    TextField("Email", text: $email)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $password)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)

                    LoginButton(title: "Sign In", background: Color("AppPurple")) {
                        // action
                    }
                    .padding(.vertical)
                }

                // Create Account
                HStack {
                    Text("Don't have an account?")
                    NavigationLink("Sign Up", destination: RegisterView())
                }
                .padding(.bottom)
                
                Spacer()
            }
            .ignoresSafeArea(.keyboard, edges: .bottom)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
