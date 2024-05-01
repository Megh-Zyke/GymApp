//
//  SwiftUIView.swift
//  gym
//
//  Created by user1.0 on 16/02/24.
//
import SwiftUI



struct BMIView: View {
    @EnvironmentObject var basicInfoManager: BasicInfoManager
    
    @State private var selectedDate = Date()
    @State private var selectedGender: Gender = .Male
    @State private var heightText = ""
    @State private var weightText = ""
    @State private var bmiResult: Double?
    @State private var missing : String?
    @State private var isNavigationActive = false
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            
         
            
            VStack(spacing: 20) {
                
                Spacer()
                
                Text("Calculate your BMI")
                    .font(.title)
                    .foregroundColor(.white)
                
                if let missingMessage = missing, bmiResult == nil {
                    Text(missingMessage)
                        .foregroundColor(.red)
                }
                
                else{
                    if let bmiResult = bmiResult {
                        if bmiResult < 18.5 {
                            Text("Looks like you are underweight.\nYour BMI is \(bmiResult, specifier: "%.2f")")
                                .foregroundColor(.white)
                        } else if bmiResult >= 18.5 && bmiResult < 25 {
                            Text("Your BMI is normal.\nYour BMI is \(bmiResult, specifier: "%.2f")")
                                .foregroundColor(.white)
                        } else {
                            Text("Looks like you are overweight.\nYour BMI is \(bmiResult, specifier: "%.2f")")
                                .foregroundColor(.white)
                        }
                    }
                }
                HStack(spacing: 20) {
                    GenderButton(gender: .Male, isSelected: selectedGender == .Male) {
                        selectedGender = .Male
                    }
                    
                    GenderButton(gender: .Female, isSelected: selectedGender == .Female) {
                        selectedGender = .Female
                    }
                    
                    GenderButton(gender: .Others, isSelected: selectedGender == .Others) {
                        selectedGender = .Others
                    }
                }
                
                DatePicker("Enter your date of birth", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(.automatic)
                    .colorScheme(.dark)
                
                HStack {
                    Text("Height (in cm)")
                        .foregroundColor(.white)
                    TextField("Enter your height", text: $heightText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                }
                
                HStack {
                        Text("Weight (in kg)")
                        .foregroundColor(.white)
                        TextField("Enter your weight", text: $weightText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                }
                Button(action: calculateBMI) {
                    Text("Calculate")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                
                Spacer()
                
                Button(action: {
                    basicInfoManager.pushValues(dob: selectedDate, selectedGender: selectedGender.rawValue, heightText: Double(heightText) ?? 1.0, weightText: Double(weightText) ?? 0.0, bmiResult: bmiResult)

                    isNavigationActive = true
                
                
                }) {
                Text("Confirm BMI and Proceed")
                        .foregroundColor(bmiResult == nil ? .black : .white)
                    
                    .foregroundColor(.white)
                    }
                .padding(.top)
                .disabled(bmiResult == nil)
            
            }.padding(.horizontal)
        }
        .navigationBarTitle("")
            .navigationBarHidden(true)
            .background(NavigationLink("", destination: gymDetails(), isActive: $isNavigationActive))
        
    }
    
    private func calculateBMI() {
            guard let height = Double(heightText), let weight = Double(weightText), height > 0, weight > 0 else {
                missing = "Please enter all the values to compute your BMI"
                return
            }
            
            let heightInMeter = height / 100
            let bmi = weight / (heightInMeter * heightInMeter)
            bmiResult = bmi
        }
    
    
    struct GenderButton: View {
        let gender: Gender
        let isSelected: Bool
        let action: () -> Void
        
        var body: some View {
            Button(action: action) {
                Text(gender.rawValue)
                    .padding()
                    .background(isSelected ? Color.blue : Color.gray)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }
        }
    }
}


#Preview {
    NavigationStack {
        BMIView()
    }
    .environmentObject(BasicInfoManager())
   
}
