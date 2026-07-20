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
        
      /* HStack {
            
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
        } */

     /*   List{

            ForEach(exercise.set_array) {  name in
                
                
                
                DisclosureGroup("Set: \(name.set)") {
                    Text("Weight: \(name.weight)")
                    Text("Reps: \(name.reps)")
                }
                
            }
            .onDelete(perform: deleteSet)
            
        }
        .font(Font.system(size: 25))
        .controlSize(.large) */
        
        
        ScrollView{
            
            LazyVStack{
                HStack{
                    Text("Set")
                        .frame(width: 80,height: 40)
                        .background(Color.black, in:RoundedRectangle(cornerRadius: 12))
                    
                    Text("Weight")
                        .frame(width: 120,height: 40)
                        .background(Color.black, in:RoundedRectangle(cornerRadius: 12))

                    Text("Reps")
                        .frame(width: 80,height: 40)
                        .background(Color.black, in:RoundedRectangle(cornerRadius: 12))

                }
                .bold()
                .italic()
                .font(.title2)
              //  .font(Font.system(size: 18))
                .foregroundStyle(Color.indigo)
                .fontDesign(Font.Design.monospaced)
               
                
                ForEach(exercise.set_array) {  name in
                    
                    HStack {
                        Text("\(name.set)")
                            .frame(width: 80)

                        Text("\(name.weight)")
                            .frame(width: 120)

                        Text("\(name.reps)")
                            .frame(width: 80)

                    }
                    .foregroundStyle(Color.mint)
                    .fontDesign(Font.Design.rounded)
                    .font(.title3)
                    .italic()

                    
                }
                
                Button("+") {
                    isPresented.toggle()
                    
                }
                .buttonStyle(.glass)
                .tint(.indigo)
                .frame(width: 50, height: 30, alignment: .leading)
                .padding()
                .sheet(isPresented: $isPresented) {
                    setAdder_View(
                        set_weight: $set_weight,
                        set_reps: $set_reps,
                        exercise: exercise
                    )
                }
                
            }
            .background(Color.black, in:RoundedRectangle(cornerRadius: 12))
            
        }
     //   .navigationTitle("Hello")
        .font(Font.system(size: 20))
        .controlSize(.large)
        
        
        }
        
    
    func deleteSet(_ indexSet: IndexSet ){
        
        for index in indexSet{
            exercise.set_array.remove(at: index)
        }
    }
    
    }

#Preview {
    let example = workoutModel()
     let ex2 = exerciseModel(exercise_number: 5, exercise_name: "Testing")
     Exercise_Controller(workout: example, exercise: ex2)
         .preferredColorScheme(.dark)
}
