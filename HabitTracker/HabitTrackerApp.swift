//
//  HabitTrackerApp.swift
//  HabitTracker
//
//  Created by Yulin Zheng on 8/31/23.
//

import FirebaseCore
import SwiftUI

@main
struct HabitTrackerApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
