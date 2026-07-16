//
//  pastWorkoutView.swift
//  Workout-Diary
//
//  Created by arpit on 16/07/26.
//

import SwiftUI

struct pastWorkoutView: View {
    @Bindable var workout: workoutModel

    var body: some View {

        List(workout.exercise_array, id: \.exercise_number) { name in

            DisclosureGroup("\(name.exercise_number)) " + name.exercise_name) {
                GroupBox {
                    pastSetViewer(exercise: name)
                        .frame(height: 300)
                }
            }
            .font(Font.system(size: 25))

        }
    }
}

#Preview {
    let example = workoutModel()
    pastWorkoutView(workout: example)
        .preferredColorScheme(.dark)
}
