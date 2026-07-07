//
//  newWorkout.swift
//  Workout-Diary
//
//  Created by arpit on 06/07/26.
//

import SwiftUI

struct newWorkout: View {
    var body: some View {
        VStack{
           
            Button("Add Exercise +") {
                Text("Hello")
            }
            .buttonStyle(.borderedProminent)
            .tint(.indigo) // Changes the background color of prominent buttons
            .controlSize(.large)
            .frame(width: 250  ,height: 50 ,alignment:.top )
            .font(Font.system(size: 25))
            
        }
    }
}


#Preview {
    ContentView()
}
