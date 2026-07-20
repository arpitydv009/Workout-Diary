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
        /*List(exercise.set_array, id: \.set) { name in

            DisclosureGroup("Set: \(name.set)") {
                Text("Weight: \(name.weight)")
                Text("Reps: \(name.reps)")
            }

        }*/
        
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
            }
            .background(Color.black, in:RoundedRectangle(cornerRadius: 12))
            
        }
     //   .navigationTitle("Hello")
        .font(Font.system(size: 20))
        .controlSize(.large)

    }
}

#Preview {
    let example = exerciseModel(
        exercise_number: 1,
        exercise_name: "Test exercise"
    )
    pastSetViewer(exercise: example)
}
