//
//  newWorkout.swift
//  Workout-Diary
//
//  Created by arpit on 06/07/26.
//

import SwiftData
import SwiftUI

struct newWorkout_View: View {


    @State private var isPresented: Bool = false
    @State private var exercise_list: [exercise_Model] = []
    
    @Bindable var workout: workoutModel

    
    var body: some View {

        
        
        VStack {
            
          //  Text("\(workout.date.formatted(date: .long, time:.shortened))")
            VStack {
                Button("Add Exercise +") {
                    isPresented.toggle()
                }
                .buttonStyle(.glass)
                .tint(.indigo)
                .frame(alignment: .center)
                .font(Font.system(size: 20))
                .sheet(isPresented: $isPresented) {
                    Exercise_Chooser(exercise_list: $exercise_list,workout: workout)
                }

            }

          /*  List(exercise_list, id: \.exercise_number) { name in

                DisclosureGroup("\(name.exercise_number)) " + name.exercise_name) {
                    GroupBox{
                        Exercise_Controller()
                            .frame(height: 300)
                    }
                }
                .font(Font.system(size: 25))

            }*/

            List(workout.exercise_array, id: \.exercise_number) { name in

                DisclosureGroup("\(name.exercise_number)) " + name.exercise_name) {
                    GroupBox{
                        Exercise_Controller(workout: workout, exercise: name)
                            .frame(height: 300)
                    }
                }
                .font(Font.system(size: 25))

            }
            
        }

    }

}

#Preview {
    //LauncherView()
    let example = workoutModel()
    newWorkout_View(workout: example)
        .preferredColorScheme(.dark)
}
