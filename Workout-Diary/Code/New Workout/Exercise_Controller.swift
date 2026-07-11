//
//  Exercise_Adder.swift
//  Workout-Diary
//
//  Created by arpit on 08/07/26.
//

import SwiftUI

struct Exercise_Controller: View {
    @State private var isPresented:Bool = false
    @State private var set_weight:Int = 11
    @State private var set_reps:Int = 11
    @State private var set_list: [String] = [""]
    @State private var SET_REPS: [Int] = [11]

    
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
                    setAdder_View(set_weight: $set_weight, set_reps: $set_reps, set_list: $set_list, SET_REPS: $SET_REPS)
                }
            }
                                        
          /*  ForEach(set_list.indices) { a in
                Text("hello")
                
                
                Button("\(set_list[a])", systemImage: "42.circle") {}
                
            }*/
            
            
            List(set_list, id: \.self) { name in

                if (name == "") {
                    
                    
                }else{
                    DisclosureGroup("Set number: \(name)") {
                        Text("Weight : \(set_weight)")
                        Text("Reps : \(set_reps)")
                    }
                }
                //Text("Set number: \(name)")
              
                 
                
            }
        
            
            }
            .font(Font.system(size: 25))
            .controlSize(.large)
            
            
            
            
        }
    }


#Preview {
    Exercise_Controller()
        .preferredColorScheme(.dark)
}
