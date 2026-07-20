//
//  Exercise_Adder.swift
//  Workout-Diary
//
//  Created by arpit on 08/07/26.
//

import SwiftUI

struct Exercise_Controller: View {
    @State private var isPresented: Bool = false
    @State private var set_weight: Int = 11
    @State private var set_reps: Int = 1
    
    @Bindable var workout: workoutModel
    @Bindable var exercise: exerciseModel
    
    @State private var SET_REPS: [Int] = [11]
    
    var body: some View {
                
        List{
            HStack {
                
                Text("Set")
                    .font(Font.system(size: 25))
                    .fontWeight(.bold)
                    .frame(width: 100)
                
                Button("+") {
                    isPresented.toggle()
                    
                }
                .buttonStyle(.glass)
                .tint(.indigo)
                .controlSize(.large)
                .frame(width: 100, height: 40)
                .font(Font.system(size: 20))
                .sheet(isPresented: $isPresented) {
                    setAdder_View(
                        set_weight: $set_weight,
                        set_reps: $set_reps,
                        exercise: exercise
                    )
                }
            }

            ForEach(exercise.set_array) {  name in
                
                DisclosureGroup("Set: \(name.set)") {
                    Text("Weight: \(name.weight)")
                    Text("Reps: \(name.reps)")
                }
                
            }
            .onDelete(perform: deleteSet)
            
        }
        .font(Font.system(size: 25))
        .controlSize(.large)
        }
        
    
    func deleteSet(_ indexSet: IndexSet ){
        
        for index in indexSet{
           // let destination = exercise.set_array[index]
            exercise.set_array.remove(at: index)
           // modelContext.delete(destination)
        }
    }
    
    }

#Preview {
    let example = workoutModel()
    let ex2 = exerciseModel(exercise_number: 5, exercise_name: "Testing")
    Exercise_Controller(workout: example, exercise: ex2)
        .preferredColorScheme(.dark)
}
