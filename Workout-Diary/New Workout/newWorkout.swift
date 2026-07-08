//
//  newWorkout.swift
//  Workout-Diary
//
//  Created by arpit on 06/07/26.
//

import SwiftUI

struct newWorkout: View {
    @State private var isPresented:Bool = false
    @State private var list_added: [String] = ["Exercise"]

    var body: some View {
        
            VStack {
                VStack{
                    
                    Button("Add Exercise +") {
                        isPresented.toggle()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.indigo) // Changes the background color of prominent buttons
                    .controlSize(.large)
                    .frame(width: 250  ,height: 50 ,alignment:.center )
                    .font(Font.system(size: 25))
                    .sheet(isPresented: $isPresented){
                        Exercise_Chooser(list_added: $list_added)
                    }
                    
                }
              //  Text("Hello")

                
                /*List(list_added, id: \.self) { name in
                    Text("Hello")
                    Text(name)
                    .font(Font.system(size: 25))
                }*/
                
               /* ForEach(list_added.indices) { a in
                    Text(list_added[a])
                        .font(Font.system(size: 25))
                        .padding()
                    Text("Hello")
                    
                }*/
                
                List(list_added, id: \.self) { name in
                    
                    if(name == "Exercise"){
                        Text(name)
                            .font(Font.system(size: 35))
                            .fontDesign(Font.Design.monospaced)

                    }else{
                        Text(name) // 3. Define the row layout

                    }
                       }
                .navigationTitle("Exercise")
                .tint(Color.indigo)
                
                
            }
        
        
        
    }
    
    
    
}




#Preview {
    //LauncherView()
    newWorkout()
        .preferredColorScheme(.dark)
}
