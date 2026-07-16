//
//  exerciseModel.swift
//  Workout-Diary
//
//  Created by arpit on 15/07/26.
//

import Foundation
import SwiftData

@Model
class exerciseModel{
    
    var exercise_number: Int
    var exercise_name: String
    var set_array = [setModel]()
    
    init(exercise_number: Int, exercise_name: String) {
        self.exercise_number = exercise_number
        self.exercise_name = exercise_name
    }
}
