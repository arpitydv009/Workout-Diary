//
//  HomeView.swift
//  Workout-Diary
//
//  Created by arpit on 08/07/26.
//

import SwiftUI

struct LauncherView: View {
    @State private var selectedtab = 1

    var body: some View {
        
        TabView(selection: $selectedtab) {
            Tab("History", systemImage: "text.page", value: 0) {
                HistoryView()
            }
            
            Tab("Home", systemImage: "house.fill", value: 1) {
                //Workout_DiaryApp()
                ContentView()
                
            }

            Tab("New Workout", systemImage: "dumbbell", value: 2) {
                //  AccountView()
                newWorkout()
            }

        }    }
}

#Preview {
    LauncherView()
        .preferredColorScheme(.dark)
}
