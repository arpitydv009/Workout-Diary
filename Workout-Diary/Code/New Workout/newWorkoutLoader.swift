//
//  newWorkoutLoader.swift
//  Workout-Diary
//
//  Created by arpit on 16/07/26.
//

import SwiftUI
import SwiftData

struct newWorkoutLoader: View {
    
    @Environment(\.modelContext) public var modelContext
    @Query var workouts: [workoutModel]
 //   @State private var path =  [workoutModel]()
    @State private var path = NavigationPath()
    


    var body: some View {
        
        
        NavigationStack(path: $path) {
         /*   NavigationLink(value: workout) {
             //   Button("Hell", action : newWorkoutAdder)
                Text("Start New Workout ")
                    .padding()
                    .frame(width: 400, height: 50)
                    .fontDesign(Font.Design.monospaced)
                    .font(Font.system(size: 25))
                    .foregroundStyle(Color.white)
                    .italic()
                    .background(
                        Color.mint,
                        in: RoundedRectangle(cornerRadius: 15)
                    )            } */
            
            Button("Start New Workout",systemImage: "Plus", action: newWorkoutAdder)
                .font(Font.system(size: 30))
                .frame(width: 500, height:50, alignment: .bottom)
                .fontDesign(Font.Design.rounded)
                .buttonStyle(.glass)
                .tint(.indigo)
            
            .navigationDestination(for: workoutModel.self) { workout in
                newWorkout_View(workout: workout)
                
            }
        }
 
        

    }
    
      func newWorkoutAdder(){
        let workout = workoutModel()
        modelContext.insert(workout)
        modelContext.insert(workout)
        path.append(workout)
    }
}

#Preview {
    newWorkoutLoader()
        .preferredColorScheme(.dark)
}
