//
//  addExcercise.swift
//  gym
//
//  Created by Meghs on 16/02/24.
//

import SwiftUI

struct addExercise: View {
    @EnvironmentObject var basicInfoManager : BasicInfoManager
    @EnvironmentObject var workout  : WorkoutManager
    
    var workouts: [Workout]
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedExercise: UpperBodyExercise = .ArnoldPress
    
    @State var level : String
    
    var body: some View {
        VStack {
            Text("Select Exercise")
                .font(.title)
                .padding()
            
            Picker("Exercise", selection: $selectedExercise) {
                ForEach(UpperBodyExercise.allCases, id: \.self) { exercise in
                    Text(exercise.rawValue)
                }
            }
            .pickerStyle(.wheel)
            .padding()
            
            Text(selectedExercise.rawValue)
            
            Button(action: {
                let newExercise = selectedExercise.rawValue
                
                workout.addExercise(newExercise, toLevel: level, at: 0)
                
                presentationMode.wrappedValue.dismiss()
                
            }) {
                Text("Add Exercise")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Spacer()
        }
    }
}


struct addExerciselb: View {
    @EnvironmentObject var basicInfoManager : BasicInfoManager
    @EnvironmentObject var workout  : WorkoutManager
    
    let workouts: [Workout]
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedExercise: LowerBodyExercise = .BoxJumps
    
    var body: some View {
        VStack {
            Text("Select Exercise")
                .font(.title)
                .padding()
            
            Picker("Exercise", selection: $selectedExercise) {
                ForEach(LowerBodyExercise.allCases, id: \.self) { exercise in
                    Text(exercise.rawValue)
                }
            }
            .pickerStyle(.wheel)
            .padding()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }) {
                Text("Add Exercise")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Spacer()
        }
    }
}

struct addExercisec: View {
    @EnvironmentObject var basicInfoManager : BasicInfoManager
    @EnvironmentObject var workout  : WorkoutManager
    
    let workouts: [Workout]
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedExercise: HIITBeginnerExercise = .AlternatingLunges
    
    var body: some View {
        VStack {
            Text("Select Exercise")
                .font(.title)
                .padding()
            
            Picker("Exercise", selection: $selectedExercise) {
                ForEach(HIITBeginnerExercise.allCases, id: \.self) { exercise in
                    Text(exercise.rawValue)
                }
            }
            .pickerStyle(.wheel)
            .padding()
            .padding()
            
            Button(action: {
                
               
                
            }) {
                Text("Add Exercise")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Spacer()
        }
    }
}



#Preview {
    addExercise(workouts : WorkoutManager.beginnerWorkouts, level: "Beginner")
        .environmentObject(WorkoutManager())
        .environmentObject(BasicInfoManager())
}
