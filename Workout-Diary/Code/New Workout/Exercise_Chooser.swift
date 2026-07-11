//
//  Exercise_Chooser.swift
//  Workout-Diary
//
//  Created by arpit on 07/07/26.
//

import SwiftUI

struct Exercise_Chooser: View {

    @State private var searchText: String = ""
    
    @Environment(\.dismiss) private var dismiss
    
    @Binding var list_added: [String]
    
    var filteredlist: [String] {
        if searchText.isEmpty {
            Exercise_List.list1
        } else {
            Exercise_List.list1.filter { name in
                name.localizedCaseInsensitiveContains(searchText)

            }
        }
    }

    var body: some View {

        Text("Exercises")
            .italic(true)
            .font(Font.system(size: 35))
            .fontDesign(Font.Design.monospaced)
            .offset(x: -80, y: 30)

        NavigationStack {
            List(filteredlist, id: \.self) { name in

                Button(name, systemImage: "dumbbell") {
                    dismiss()
                     list_added.append(name)
                   // Exercise_Adder()
                }
                
                .font(Font.system(size: 25))
            }
        }
        .searchable(
            text: $searchText,
            placement: .navigationBarDrawer,
            prompt: "Search"
        )
        .foregroundStyle(Color.indigo)
        .background(Color.gray, in: RoundedRectangle(cornerRadius: 25))

    }
}

#Preview {
    LauncherView()
        .preferredColorScheme(.dark)
}
