//
//  setAdder_View.swift
//  Workout-Diary
//
//  Created by arpit on 09/07/26.
//

import SwiftUI

struct setAdder_View: View {

    @Binding var set_weight: Int
    @Binding var set_reps: Int
    @Binding var set_list: [String]
    @Binding var SET_REPS: [Int]

    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        
        
        Text("Log Data")
            .font(Font.system(size: 45, design: Font.Design.monospaced))
            .padding()
            .offset(x: -50)

        VStack {
            HStack {
                
                Text("Weight: ")
                    .font(Font.system(size: 30))
                    .fontDesign(Font.Design.rounded)
                    .padding()
                    .background(Color.gray, in: RoundedRectangle(cornerRadius: 30))


                
                Picker(selection: $set_weight, label: Text("Picker")) {
                    
                    ForEach(Weight_List.weight_list, id: \.self) { w in
                        Text("\(w)").tag(w)
                            .font(.headline)
                            .padding()
                            .foregroundStyle(Color.indigo)
                        

                    }
                }
                .frame(width: 200)
                .pickerStyle(.wheel)
                .foregroundStyle(Color.white)
                
            }
            
            HStack {
                
                Text("Reps: ")
                    .font(Font.system(size: 30))
                    .fontDesign(Font.Design.rounded)
                    .padding()
                  .background(Color.gray, in: RoundedRectangle(cornerRadius: 30))
                
                Picker(selection: $set_reps, label: Text("Picker")) {
                    
                    ForEach(Weight_List.weight_list, id: \.self) { w in
                        
                        Text("\(w)").tag(w)
                            .font(.headline)
                            .padding()
                            .foregroundStyle(Color.indigo)

                    }
                }
                .frame(width: 200)
                .pickerStyle(.wheel)
                
                
            }
            
            Button("Save", systemImage: "dumbbell") {
                set_list.append("\(set_list.count)")
                dismiss()
            }
            .font(Font.system(size: 30))
            .frame(width: 500, height:50, alignment: .bottom)
            .fontDesign(Font.Design.rounded)
            .buttonStyle(.glass)
            .tint(.indigo)
        }
        .frame(height: 400, alignment: .bottom)
    }

}

#Preview {
    newWorkout_View()
        .preferredColorScheme(.dark)
}
