//
//  LoginViewModel.swift
//  HabitTracker
//
//  Created by Yulin Zheng on 9/1/23.
//

import FirebaseAuth
import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMsg = ""
    
    func login() {
        guard validate() else {
            return
        }
        // log in with firebase
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func validate() -> Bool {
        errorMsg = ""
        
        guard !email.isEmpty, !password.isEmpty else {
            errorMsg = "Please fill in all fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMsg = "Please enter a valid email"
            return false
        }
        
        return true
    }
}
