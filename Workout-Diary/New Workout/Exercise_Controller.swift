//
//  Exercise_Adder.swift
//  Workout-Diary
//
//  Created by arpit on 08/07/26.
//

import SwiftUI

struct Exercise_Controller: View {
    @State private var isPresented:Bool = false
    @State private var set_weight:Int = 0
    @State private var set_reps:Int = 0

    
    var body: some View {
        VStack{
            
            HStack {
                
                Text("Set")
                    .font(Font.system(size: 25))
                    .fontWeight(.bold)
                    
                Button("+") {
                    isPresented.toggle()
                }
                .buttonStyle(.glass)
                .tint(.indigo)
                .controlSize(.large)
                .frame(width: 250  ,height: 50 ,alignment:.center )
                .font(Font.system(size: 25))
                .sheet(isPresented: $isPresented){
                    setAdder_View(set_weight: $set_weight, set_reps: $set_reps)
                }
            }
                
            }
            .font(Font.system(size: 25))
            .controlSize(.large)
            
            
            
            
            
            
        }
    }


#Preview {
    newWorkout_View()
        .preferredColorScheme(.dark)
}
