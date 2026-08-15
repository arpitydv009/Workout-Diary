//
//  ContentView.swift
//  Workout-Diary
//
//  Created by arpit on 05/07/26.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @State private var selectedtab = 1
    @Query(sort: \workoutModel.date, order: .reverse) var workouts:
        [workoutModel]
    @State private var path = NavigationPath()
    @Environment(\.modelContext) var modelContext

    var body: some View {

        VStack {
            HStack {

                Text("Workout-Diary")
                    .italic()
                    .font(Font.system(size: 35))
                    .bold()
                    .fontDesign(Font.Design.monospaced)
                    .padding()
                    .frame(width: 320, height: 75)

                Image(systemName: "dumbbell")
                    .resizable()
                    .foregroundStyle(Color.white)
                    .frame(width: 50, height: 45)

            }
            .frame(width: 300, alignment: .top)
            .offset(x: 0, y: -30)
            .padding()

            GroupBox {
                Text("Let’s make today count.")
                    .font(Font.system(size: 20))
                    .italic()
                    .fontDesign(Font.Design.rounded)
            }
            .offset(x:-50)
            .frame(alignment: .leading)
            
            
            NavigationStack(path: $path) {
                
                    List {
                        ForEach(workouts.prefix(3)) { workout in
                            
                            NavigationLink(value: workout) {
                                VStack(alignment: .leading) {
                                    Text(
                                        workout.date.formatted(
                                            date: .long,
                                            time: .shortened
                                        )
                                    )
                                    .fontDesign(Font.Design.rounded)
                                }
                            }
                        }
                        
                    }
                    .navigationTitle("Recent Workouts")
                    .navigationDestination(
                        for: workoutModel.self,
                        destination: pastWorkoutView.init
                    )
                
                
            }
            
         /*   NavigationStack(path: $path) {

                Button(
                    "Start New Workout",
                    systemImage: "plus.app",
                    action: newWorkoutAdder
                )
                .font(Font.system(size: 30))
                .frame(width: 500, height: 50, alignment: .bottom)
                .fontDesign(Font.Design.rounded)
                .buttonStyle(.glass)
                .tint(.indigo)
                .offset(x:-30)

                .navigationDestination(for: workoutModel.self) { workout in
                    newWorkout_View(workout: workout)

                }
            }*/
            
           
        }

    }

    /*  ScrollView {
          NavigationView {
                  VStack {
                           NavigationLink(destination: newWorkout()) {
                               Text("New Workout Starter")
                                   .padding()
                                   .frame(width: 400, height: 50)
                                   .fontDesign(Font.Design.monospaced)
                                   .font(Font.system(size: 25))
                                   .foregroundStyle(Color.white)
                                   .italic()
                                   .background(
                                       Color.mint,
                                       in: RoundedRectangle(cornerRadius: 15)
                                   )
                           }

                           NavigationLink(destination: HistoryView()) {
                               Text("History")
                                   .padding()
                                   .frame(width: 400, height: 50)
                                   .fontDesign(Font.Design.monospaced)
                                   .font(Font.system(size: 25))
                                   .foregroundStyle(Color.white)
                                   .italic()
                                   .background(
                                       Color.mint,
                                       in: RoundedRectangle(cornerRadius: 15)
                                   )
                           }

                  }
                  .padding()
                  .preferredColorScheme(.dark)
          }
      } */
    func newWorkoutAdder() {
        let workout = workoutModel()
        modelContext.insert(workout)
        modelContext.insert(workout)
        path.append(workout)
    }
    
}

#Preview {
    LauncherView()
        .preferredColorScheme(.dark)
        .modelContainer(for: workoutModel.self, inMemory: true)

}
