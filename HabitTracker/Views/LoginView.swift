//
//  LoginView.swift
//  HabitTracker
//
//  Created by Yulin Zheng on 9/1/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
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
                    TextField("Email", text: $viewModel.email)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    LoginButton(title: "Sign In", background: Color("AppPurple")) {
                        // action
                        viewModel.login()
                    }
                    .padding(.vertical)
                }
                
                // Create Account
                HStack {
                    Text("Don't have an account?")
                    NavigationLink("Sign Up", destination: RegisterView())
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("Sign In")
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
