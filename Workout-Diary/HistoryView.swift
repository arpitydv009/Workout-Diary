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
            
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                .datePickerStyle(.graphical)
                
        }
        
        
        
        
        
    
        .preferredColorScheme(.dark)
    }

}

#Preview {
    ContentView()
}
