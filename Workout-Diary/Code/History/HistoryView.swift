//
//  HistoryView.swift
//  Workout-Diary
//
//  Created by arpit on 06/07/26.
//

import SwiftUI
import SwiftData

struct HistoryView: View {

    @Query(sort: \workoutModel.date, order: .reverse) var workouts:
        [workoutModel]
    @State private var path = NavigationPath()
    @Environment(\.modelContext) var modelContext


    var body: some View {

        NavigationStack(path: $path) {
            List {
                ForEach(workouts) { workout in

                    NavigationLink(value: workout) {
                        VStack(alignment: .leading) {
                            Text(
                                workout.date.formatted(
                                    date: .long,
                                    time: .standard
                                )
                            )
                            .font(.headline)
                        }
                    }
                }
                 .onDelete(perform: deleteWorkout)

            }
            .navigationTitle("History")
            .navigationDestination(
                for: workoutModel.self,
                destination: pastWorkoutView.init
            )
          
        }

    }
    
    func deleteWorkout(_ indexSet: IndexSet ){
        
        for index in indexSet{
            let workout = workouts[index]
            modelContext.delete(workout)
        }
    }

}

#Preview {
    LauncherView()
        .preferredColorScheme(.dark)

}
