//
//  setModel.swift
//  Workout-Diary
//
//  Created by arpit on 15/07/26.
//

import Foundation
import SwiftData

@Model
class setModel {

    var set: Int
    var weight: Int
    var reps: Int

    init(set: Int = 1, weight: Int = 0, reps: Int = 0) {
        self.set = set
        self.weight = weight
        self.reps = reps
    }
}
