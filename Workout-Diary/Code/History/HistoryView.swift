//
//  HistoryView.swift
//  Workout-Diary
//
//  Created by arpit on 06/07/26.
//

import SwiftUI
import _SwiftData_SwiftUI

struct HistoryView: View {
    
    @Query(sort: \workoutModel.date, order: .reverse) var workouts: [workoutModel]
    @State private var path = NavigationPath()
    
    var body: some View {
      /* List(workouts, id: \.self) { name in

            Text("Workout Date: \(name.date.formatted(date: .long, time: .standard))")

        }*/
        
        
        NavigationStack(path: $path){
            List{
                ForEach(workouts) {  workout in
                    
                    NavigationLink(value : workout) {
                        VStack(alignment:.leading){
                            Text(workout.date.formatted(date: .long, time: .complete ))
                                .font(.headline)
                        }
                    }
                }
               // .onDelete(perform: deleteDestination)
                
            }
            .navigationTitle("Data Saver")
            .navigationDestination(for: workoutModel.self, destination: pastWorkoutView.init)
            .toolbar {
              //  Button("Add", action: addDestination)
              //  Button("",systemImage: "plus", action: addSamples)
            }
        }
        
    }

}

#Preview {
    LauncherView()
        .preferredColorScheme(.dark)

}
