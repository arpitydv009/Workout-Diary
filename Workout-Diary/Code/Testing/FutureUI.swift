//
//  testview.swift
//  Workout-Diary
//
//  Created by arpit on 06/07/26.
//

import SwiftUI

struct FutureUI: View {
    var body: some View {

        NavigationStack {
            HStack {
                
                /*   NavigationLink(destination: newWorkout_View()) {
                 
                 Image(systemName: "dumbbell")
                 .resizable()
                 .frame(width: 60, height: 40, alignment: .center)
                 .padding(10)
                 .background()
                 }
                 .frame(width: 400, height: 80, alignment: .bottom)
                 .background(Color.mint, in: RoundedRectangle(cornerRadius: 40))
                 }*/
            }
        }

        
        
        NavigationStack {
            List {
                Text("Hello")
                Text("Hi")
            }
        }
        .navigationTitle("Future")
        .navigationBarItems(leading: EditButton())
        .frame(height: 800)
      //  .preferredColorScheme(.dark)

    }
}
#Preview {
    FutureUI()
}
