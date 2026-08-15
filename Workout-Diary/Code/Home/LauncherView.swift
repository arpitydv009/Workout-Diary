//
//  HomeView.swift
//  Workout-Diary
//
//  Created by arpit on 08/07/26.
//

import SwiftData
import SwiftUI

struct LauncherView: View {

    @State private var selectedtab = 1

    var body: some View {

        TabView(selection: $selectedtab) {
            Tab("History", systemImage: "text.page", value: 0) {
                HistoryView()

            }

            Tab("Home", systemImage: "house.fill", value: 1) {
                ContentView()

            }

            Tab("New Workout", systemImage: "dumbbell", value: 2) {

                newWorkoutLoader()

            }

        }
        .preferredColorScheme(.dark)
    }

}

#Preview {
    LauncherView()
        .preferredColorScheme(.dark)
}
