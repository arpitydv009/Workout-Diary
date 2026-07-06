//
//  ContentView.swift
//  Workout-Diary
//
//  Created by arpit on 05/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            HStack {
                VStack {
                    
                    HStack{
                        
                        
                        Text("Workout-Diary")
                            .italic()
                            .font(Font.system(size: 31))
                            .fontDesign(Font.Design.monospaced)
                            .padding()
                            .background(Color.cyan, in:RoundedRectangle(cornerRadius: 12))
                            .frame(width: 300, height:75)
                        
                        
                        //  .offset(x : 0, y:-300)
                        
                        
                        Image(systemName: "dumbbell")
                            .resizable()
                            .foregroundStyle(Color.white)
                            .frame(width: 50, height: 50)
                        // .offset(x : 0, y:-300)
                        
                    }
                    .frame(width: 300, height: 200, alignment:.top)
                    .offset(x:0, y:-220)
                    
                    
                    
                    VStack {
                        NavigationLink(destination: newWorkout()) {
                            Text("New Workout Starter")
                                .padding()
                                .frame(width:400,height:50)
                                .fontDesign(Font.Design.monospaced)
                                .font(Font.system(size: 25))
                                .foregroundStyle(Color.white)
                                .italic()
                                .background(Color.mint, in:RoundedRectangle(cornerRadius: 15))
                        }
                        
                        NavigationLink(destination: testview()) {
                            Text("History")
                                .padding()
                                .frame(width:400,height:50)
                                .fontDesign(Font.Design.monospaced)
                                .font(Font.system(size: 25))
                                .foregroundStyle(Color.white)
                                .italic()
                                .background(Color.mint, in:RoundedRectangle(cornerRadius: 15))
                        }
                        
                        
                    }
                    
                    
                    
                }
                .padding()
                .preferredColorScheme(.dark)
            }
            
        }
        
    }
}


#Preview {
    ContentView()
}
