//
//  newWorkout.swift
//  Workout-Diary
//
//  Created by arpit on 06/07/26.
//

import SwiftUI

struct newWorkout_View: View {
    @State private var isPresented: Bool = false
    @State private var list_added: [String] = ["Exercise"]
    
    var body: some View {

        VStack {
            VStack {

                Button("Add Exercise +") {
                    isPresented.toggle()
                }
                .buttonStyle(.glass)
                .tint(.indigo)
                .frame(alignment: .center)
                .font(Font.system(size: 25))
                .sheet(isPresented: $isPresented) {
                    Exercise_Chooser(list_added: $list_added)
                }

            }

            /*List(list_added, id: \.self) { name in
                Text("Hello")
                Text(name)
                .font(Font.system(size: 25))
            }

            ForEach(list_added.indices) { a in
                Text(list_added[a])
                    .font(Font.system(size: 25))
                    .padding()
                Text("Hello")

            }*/

            List(list_added, id: \.self) { name in

                if name == "Exercise" {
                    Text(name)
                        .font(Font.system(size: 39))
                        .fontDesign(Font.Design.monospaced)
                        .padding()

                }
                
                else {
                    
                    GroupBox(
                        label: Label(name, systemImage: "").font(
                            Font.system(size: 35)
                        )
                        .fontDesign(Font.Design.rounded)

                    ) {
                        Exercise_Controller()
                        
                    }
                    .frame(height:500)

                }
            }
           

        }

    }

}

#Preview {
    //LauncherView()
    newWorkout_View()
        .preferredColorScheme(.dark)
}
