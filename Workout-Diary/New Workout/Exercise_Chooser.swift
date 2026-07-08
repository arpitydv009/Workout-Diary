//
//  Exercise_Chooser.swift
//  Workout-Diary
//
//  Created by arpit on 07/07/26.
//

import SwiftUI

struct Exercise_Chooser: View {

    @State private var searchText: String = ""
    private var list2 = Exercise_List.list1
    
    var body: some View {

      /*  TextField("Search 🔍", text: $searched)
            .frame(width: 350, height: 25, alignment: .top)
            .padding()
            // .border(Color.yellow)
            // .backgroundExtensionEffect()
            .font(Font.system(size: 25))
            .fontDesign(Font.Design.monospaced)
            .italic(true)
            .background(Color.gray, in: RoundedRectangle(cornerRadius: 25))
        */
        
          Text("Exercises")
             // .padding()
              .italic(true)
              .font(Font.system(size: 35))
              .fontDesign(Font.Design.monospaced)
              .offset(x: -80, y:30)

        NavigationStack {
            List(filteredlist, id: \.self) { name in
                
                Button(name, systemImage: "dumbbell") {}
                    .font(Font.system(size: 25))

                
                
                   // .background(Color.gray, in: RoundedRectangle(cornerRadius: 25))
                   // .frame(alignment: .topLeading)
                
                
               /* ForEach(filteredlist.indices) { a in
                    Button(filteredlist[a], systemImage: "dumbbell") {}
                        .font(Font.system(size: 25))
                    
                }*/
            }
        }
        .navigationTitle("Exercises")
        .searchable(text: $searchText,placement: .navigationBarDrawer , prompt: "Search")
        .foregroundStyle(Color.white)
        .background(Color.gray, in: RoundedRectangle(cornerRadius: 25))

    }

        
    var filteredlist: [String]{
        if searchText.isEmpty{
            list2
        } else{
            list2.filter{name in
                name.localizedCaseInsensitiveContains(searchText)
            
            }
        }
    }
    
    
    
    }
    
    
    
    



#Preview {
    Exercise_Chooser()
        .preferredColorScheme(.dark)
}
