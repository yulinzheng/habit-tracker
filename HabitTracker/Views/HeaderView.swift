//
//  HeaderView.swift
//  HabitTracker
//
//  Created by Yulin Zheng on 11/2/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(background)
                .offset(y: -60)
            Rectangle()
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                    .padding(.bottom, 5)
                    
                Text(subtitle)
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
        HeaderView(title: "Title",
                   subtitle: "Subtitle",
                   angle: -15,
                   background: Color.yellow)
    }
}
