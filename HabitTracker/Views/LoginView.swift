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
                HeaderView()

                // Login Form
                Form {
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)

                    Button {
                        // log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Sign In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
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
