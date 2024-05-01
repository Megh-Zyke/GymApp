//
//  structures.swift
//  gym
//
//  Created by user1.0 on 16/02/24.
//

import Foundation

struct BasicInfo {
    var dob: Date
    var selectedGender: String
    var heightText: Double
    var weightText: Double
    var bmiResult: Double?
    var type : String?
    
    init(dob: Date, selectedGender: String, heightText: Double, weightText: Double, bmiResult: Double? = nil, type: String? = nil) {
        self.dob = dob
        self.selectedGender = selectedGender
        self.heightText = heightText
        self.weightText = weightText
        self.bmiResult = bmiResult
        self.type = type
    }
    
    mutating func addValues(dob: Date, selectedGender: String, heightText: Double, weightText: Double, bmiResult: Double? = nil){
        self.dob = dob
        self.selectedGender = selectedGender
        self.heightText = heightText
        self.weightText = weightText
        self.bmiResult = bmiResult
    }
}


