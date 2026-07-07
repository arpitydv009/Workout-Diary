//
//  ContentView.swift
//  Workout-Diary
//
//  Created by arpit on 05/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        HStack {

            Text("Workout-Diary")
                .italic()
                .font(Font.system(size: 35))
                .bold()
                .fontDesign(Font.Design.monospaced)
                .padding()
                //.background(Color.cyan, in:RoundedRectangle(cornerRadius: 12))
                .frame(width: 320, height: 75)

            //  .offset(x : 0, y:-300)

            Image(systemName: "dumbbell")
                .resizable()
                .foregroundStyle(Color.white)
                .frame(width: 50, height: 45)
            // .offset(x : 0, y:-300)

        }
        .frame(width: 300, height: 200, alignment: .top)
        .offset(x: 0, y: -30)
        .padding()
        
        ScrollView {
            NavigationView {
                HStack {
                    VStack {

                        

                       /*VStack {
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
                            
                           
                            
                        }*/

                    }
                    .padding()
                    .preferredColorScheme(.dark)
                }

            }
        }
    
        TabView {
            Tab("History", systemImage: "text.page") {
                HistoryView()
            }
            

            Tab("Home", systemImage: "house.fill") {
                //Workout_DiaryApp()
            }

            Tab("New Workout", systemImage: "dumbbell") {
              //  AccountView()
                newWorkout()
            }
           
        }
    }
}

#Preview {
    ContentView()
}
