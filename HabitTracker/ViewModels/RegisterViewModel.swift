//
//  RegisterViewModel.swift
//  HabitTracker
//
//  Created by Yulin Zheng on 9/1/23.
//

import FirebaseAuth
import Foundation

class RegisterViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMsg = ""
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) {
            [weak self] result, error in guard let userId = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String) {
        
    }
    
    private func validate() -> Bool {
        errorMsg = ""
        
        guard !email.isEmpty, !password.isEmpty else {
            errorMsg = "Please fill in all fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMsg = "Please enter a valid email"
            return false
        }
        
        guard password.count >= 8 else {
            errorMsg = "Password must be 8 or more characters"
            return false
        }
        return true
    }
}

