//
//  LoginButton.swift
//  HabitTracker
//
//  Created by Yulin Zheng on 11/3/23.
//

import SwiftUI

struct LoginButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton(title: "Title", background: Color.blue) {
            // action
        }
    }
}
