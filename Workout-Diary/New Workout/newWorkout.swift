//
//  newWorkout.swift
//  Workout-Diary
//
//  Created by arpit on 06/07/26.
//

import SwiftUI

struct newWorkout: View {
    @State private var isPresented:Bool = false
    var body: some View {
        
        ScrollView {
            VStack{
                
                Button("Add Exercise +") {
                    isPresented.toggle()
                }
                .buttonStyle(.borderedProminent)
                .tint(.indigo) // Changes the background color of prominent buttons
                .controlSize(.large)
                .frame(width: 250  ,height: 50 ,alignment:.top )
                .font(Font.system(size: 25))
                .sheet(isPresented: $isPresented){
                            Exercise_Chooser()
                        }
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}
