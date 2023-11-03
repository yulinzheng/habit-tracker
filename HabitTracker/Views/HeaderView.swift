//
//  HeaderView.swift
//  HabitTracker
//
//  Created by Yulin Zheng on 11/2/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color("AppPurple"))
                .rotationEffect(Angle(degrees: 15))

            
            VStack {
                Text("Habit Tracker")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text("Build Habits & Reach Goals")
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
                    
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}