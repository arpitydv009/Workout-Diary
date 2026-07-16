//
//  workoutModel.swift
//  Workout-Diary
//
//  Created by arpit on 15/07/26.
//

import Foundation
import SwiftData

@Model
class workoutModel{
    var date: Date
    var exercise_array = [exerciseModel]()
    
    init(date: Date = .now) {
        self.date = date
    }
}
