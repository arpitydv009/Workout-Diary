//
//  pastSetViewer.swift
//  Workout-Diary
//
//  Created by arpit on 16/07/26.
//

import SwiftData
import SwiftUI

struct pastSetViewer: View {
    @Bindable var exercise: exerciseModel

    var body: some View {
        List(exercise.set_array, id: \.set) { name in

            DisclosureGroup("Set: \(name.set)") {
                Text("Weight: \(name.weight)")
                Text("Reps: \(name.reps)")
            }

        }

    }
}

#Preview {
    let example = exerciseModel(
        exercise_number: 1,
        exercise_name: "Test exercise"
    )
    pastSetViewer(exercise: example)
}
