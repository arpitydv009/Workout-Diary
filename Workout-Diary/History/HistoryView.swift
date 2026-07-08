//
//  HistoryView.swift
//  Workout-Diary
//
//  Created by arpit on 06/07/26.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack{
            
            DatePicker(selection: .constant(Date()), label: { Text("Date") })
                .datePickerStyle(.graphical)
                .offset(x:0,y:-50)
        }
        
        
        
        
        
    
        .preferredColorScheme(.dark)
    }

}

#Preview {
    ContentView()
}
