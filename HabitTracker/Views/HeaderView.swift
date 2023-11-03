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
            
            Rectangle()
                .foregroundColor(Color("AppPurple"))
                .offset(y: -60)
            Rectangle()
                .foregroundColor(Color("AppPurple"))
                .rotationEffect(Angle(degrees: -15))
            
            VStack {
                Text("Habit Tracker")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                    .padding(.bottom, 5)
                    
                Text("Build Habits & Reach Goals")
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 50)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: UIScreen.main.bounds.height / 3)
        .offset(y: -50)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
