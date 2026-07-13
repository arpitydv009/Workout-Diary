//
//  newWorkout.swift
//  Workout-Diary
//
//  Created by arpit on 06/07/26.
//

import SwiftUI

struct newWorkout_View: View {
    @State private var isPresented: Bool = false
    @State private var exercise_list: [exercise_Model] = []


    var body: some View {

        VStack {
            VStack {

                Button("Add Exercise +") {

                    isPresented.toggle()
                }
                .buttonStyle(.glass)
                .tint(.indigo)
                .frame(alignment: .center)
                .font(Font.system(size: 20))
                .sheet(isPresented: $isPresented) {
                    Exercise_Chooser(exercise_list: $exercise_list)
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

            List(exercise_list, id: \.exercise_number) { name in

                DisclosureGroup(
                    "\(name.exercise_number)) " + name.exercise_name
                ) {
                    GroupBox(/*  label: Label(name, systemImage: "").font(
                          Font.system(size: 25)
                      )
                      .fontDesign(Font.Design.rounded)*/

                    ) {
                        Exercise_Controller()
                            .frame(height: 300)

                    }
                }
                .font(Font.system(size: 25))

            }

        }

    }

}

#Preview {
    //LauncherView()
    newWorkout_View()
        .preferredColorScheme(.dark)
}
