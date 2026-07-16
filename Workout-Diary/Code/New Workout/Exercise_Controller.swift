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
    
    @State private var SET_LIST: [set_Model] = [set_Model(set: 0, weight: 0, reps: 0)]
    
    @Bindable var workout: workoutModel
    @Bindable var exercise: exerciseModel

    @State private var SET_REPS: [Int] = [11]

    
    var body: some View {
        
            
          /*  HStack {
                
                Text("Set")
                    .font(Font.system(size: 20))
                    .fontWeight(.bold)
                    .frame(width:40)
                    
                Button("+") {
                    isPresented.toggle()
                   // SET_LIST.append(set_Model(set: 0, weight: 0, reps: 0))
                    
                }
                .buttonStyle(.glass)
                .tint(.indigo)
                .controlSize(.large)
                .frame(width: 100  ,height: 50 ,alignment:.leading )
                .font(Font.system(size: 20))
                .sheet(isPresented: $isPresented){
                    setAdder_View(set_weight: $set_weight, set_reps: $set_reps, set_list: $set_list, SET_LIST: $SET_LIST)
                }
            }
            .frame(alignment: .leading)*/
           // .background(Color.gray)
                                        
          /*  ForEach(set_list.indices) { a in
                Text("hello")
                
                
                Button("\(set_list[a])", systemImage: "42.circle") {}
                
            }*/
            
            
           /* List(set_list, id: \.self) { name in

                if (name == "") {
                    
                    
                }else{
                    DisclosureGroup("Set number: \(name)") {
                        Text("Weight : \(set_weight)")
                        Text("Reps : \(set_reps)")
                    }
                }
                //Text("Set number: \(name)")
              
                 
                
            }*/
            
           /* List(SET_LIST, id: \.set) { name in

                if(name.set == 0){
                    HStack {
                        
                        Text("Set")
                            .font(Font.system(size: 25))
                            .fontWeight(.bold)
                            .frame(width:100)
                            
                        Button("+") {
                            isPresented.toggle()
                           // SET_LIST.append(set_Model(set: 0, weight: 0, reps: 0))
                            
                        }
                        .buttonStyle(.glass)
                        .tint(.indigo)
                        .controlSize(.large)
                        .frame(width: 100  ,height: 40)
                        .font(Font.system(size: 20))
                        .sheet(isPresented: $isPresented){
                            setAdder_View(set_weight: $set_weight, set_reps: $set_reps, set_list: $set_list, SET_LIST: $SET_LIST, exercise: exercise)
                        }
                    }
                }
                else{
                    DisclosureGroup("Set: \(name.set)") {
                        Text("Weight: \(name.weight)")
                        Text("Reps: \(name.reps)")
                }
          

                }
               
            }*/
        HStack {
            
            Text("Set")
                .font(Font.system(size: 25))
                .fontWeight(.bold)
                .frame(width:100)
                
            Button("+") {
                isPresented.toggle()
               // SET_LIST.append(set_Model(set: 0, weight: 0, reps: 0))
                
            }
            .buttonStyle(.glass)
            .tint(.indigo)
            .controlSize(.large)
            .frame(width: 100  ,height: 40)
            .font(Font.system(size: 20))
            .sheet(isPresented: $isPresented){
                setAdder_View(set_weight: $set_weight, set_reps: $set_reps, set_list: $set_list, SET_LIST: $SET_LIST, exercise: exercise)
            }
        }
        
            List(exercise.set_array, id: \.set){ name in
                
                DisclosureGroup("Set: \(name.set)") {
                    Text("Weight: \(name.weight)")
                    Text("Reps: \(name.reps)")
                }
                
            }
           
        
           /* ForEach(SET_LIST.indices) { a in
                Text("Hello")
                Text("Set: \(SET_LIST[a].set)")
                Text("Reps: \(SET_LIST[a].reps)")
                Text("Weight: \(SET_LIST[a].weight)")

                  
                  //Button("\(set_list[a])", systemImage: "42.circle") {}
                  
              }*/
        
            
            
            .font(Font.system(size: 25))
            .controlSize(.large)
            
            
            
        }
    }


#Preview {
    let example = workoutModel()
    let ex2 = exerciseModel(exercise_number: 5, exercise_name: "Testing")
    Exercise_Controller(workout: example, exercise: ex2)
        .preferredColorScheme(.dark)
}
