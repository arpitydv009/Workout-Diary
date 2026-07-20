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

    @Bindable var workout: workoutModel

    var body: some View {

        VStack {

            VStack {
                Button("Add Exercise +") {
                    isPresented.toggle()
                }
                .buttonStyle(.glass)
                .tint(.indigo)
                .frame(alignment: .center)
                .font(Font.system(size: 20))
                .sheet(isPresented: $isPresented) {
                    Exercise_Chooser(workout: workout)
                }

            }

         /*   List(workout.exercise_array, id: \.exercise_number) { name in

                DisclosureGroup(
                    "\(name.exercise_number)) " + name.exercise_name
                ) {
                    GroupBox {
                        Exercise_Controller(workout: workout, exercise: name)
                            .frame(height: 300)
                    }
                }
                .font(Font.system(size: 25))

            }*/
            
            
            List{
                ForEach(workout.exercise_array) {  name in
                    
                    DisclosureGroup(
                        "\(name.exercise_number)) " + name.exercise_name
                    )
                    {
                        GroupBox {
                            Exercise_Controller(workout: workout, exercise: name)
                            
                               // .frame(height: 300)
                        }
                      
                    }
                    .font(.title)
                    .foregroundStyle(Color.cyan)
                    .font(Font.system(size: 25))
                    
                }
                .onDelete(perform: deleteExercise)
            }
            .font(Font.system(size: 25))
            .controlSize(.large)

            
            
        }

    }

    
    func deleteExercise(_ indexSet: IndexSet ){
        
        for index in indexSet{
            workout.exercise_array.remove(at: index)
        }
    }
    
}

#Preview {
    let example = workoutModel()
    newWorkout_View(workout: example)
        .preferredColorScheme(.dark)
}
