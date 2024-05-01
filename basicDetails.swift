//
//  basicDetails.swift
//  gym
//
//  Created by user1.0 on 16/02/24.
//

import Foundation

class BasicInfoManager: ObservableObject {
    @Published var basicInfo: BasicInfo
    
    
    
    init() {
        
        let dob : Date = Date()
        let gender : String = ""
        let height = 0.0
        let weight = 0.0
        let bmiResult : Double? = nil
        let type : String? = nil
        
        self.basicInfo = BasicInfo(dob: dob, selectedGender: gender, heightText: height, weightText: weight, bmiResult: bmiResult, type: type)
        
    
    }

    func pushValues(dob: Date, selectedGender: String, heightText: Double, weightText: Double, bmiResult: Double?) {
        
        basicInfo.addValues(dob: dob, selectedGender: selectedGender, heightText: heightText, weightText: weightText)
    }
    
    func pushCategory(indexValue: Int) {
        switch indexValue {
        case 0:
            basicInfo.type = "Beginner"
        case 1:
            basicInfo.type = "Intermediate"
        case 2:
            basicInfo.type = "Advanced"
        case 3:
            basicInfo.type = "Expert"
        default:
            basicInfo.type = nil
        }
    }
}
