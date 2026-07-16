//
//  Workout_DiaryApp.swift
//  Workout-Diary
//
//  Created by arpit on 05/07/26.
//

import SwiftUI
import SwiftData

@main
struct Workout_DiaryApp: App {
    var body: some Scene {
        WindowGroup {
            LauncherView()
        }
        .modelContainer(for: workoutModel.self)


    }
}
