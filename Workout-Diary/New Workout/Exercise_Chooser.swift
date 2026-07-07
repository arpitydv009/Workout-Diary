//
//  Exercise_Chooser.swift
//  Workout-Diary
//
//  Created by arpit on 07/07/26.
//

import SwiftUI

struct Exercise_Chooser: View {

    @State private var searched: String = ""
    var body: some View {

        TextField("Search", text: $searched)
            .frame(width: 350, height: 25, alignment: .top)
            .padding()
            // .border(Color.yellow)
            // .backgroundExtensionEffect()
            .font(Font.system(size: 25))
            .fontDesign(Font.Design.monospaced)
            .italic(true)
            .background(Color.gray, in: RoundedRectangle(cornerRadius: 25))
        List {

            /* ForEach(EList) { EList in
                 Button(EList.exercise, systemImage: "42.circle") {}
             }*/

            ForEach(Exercise_List.list1.indices) { a in
                Button(Exercise_List.list1[a], systemImage: "42.circle") {}

            }
        }
    }

    /* public let EList: [ExList] = [
         ExList(exercise: "Large Title"),
         ExList(exercise: "Title"),
         ExList(exercise: "Headline"),
         ExList(exercise: "Body"),
         ExList(exercise: "Caption")
     ]*/

    /*public struct ExList: Identifiable {
        let exercise: String
        public var id: String { exercise }

    }*/

}

#Preview {
    Exercise_Chooser()
        .preferredColorScheme(.dark)
}
