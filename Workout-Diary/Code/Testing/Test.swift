//
//  Test.swift
//  Workout-Diary
//
//  Created by arpit on 07/07/26.
//

import SwiftUI

struct Test: View {
    var body: some View {

        NavigationStack {
                    VStack {
                        Text("Hello, World!")
                    }
                    // Title is attached to the view INSIDE the stack
                    .navigationTitle("Dashboard")
                }
    }
}

#Preview {
    Test()
}
