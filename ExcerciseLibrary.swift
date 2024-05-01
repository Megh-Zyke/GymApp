//
//  ExcerciseLibrary.swift
//  gym
//
//  Created by Meghs on 17/02/24.
//

import SwiftUI

struct ExcerciseLibrary: View {
    @EnvironmentObject var basicInfoManager : BasicInfoManager
    @EnvironmentObject var workouts  : WorkoutManager

    var body: some View {
       
        List {
            Section(header: Text("Upper Body Exercises")) {
                ForEach(UpperBodyExercise.allCases, id: \.self) { exercise in
                    NavigationLink {
                        ExerciseDetails(exerciseName: exercise.rawValue)
                    } label: {
                        Text(exercise.rawValue)
                    }

                    
                }
            }
            
            Section(header: Text("Lower Body Exercises")) {
                ForEach(LowerBodyExercise.allCases, id: \.self) { exercise in
                    NavigationLink {
                        ExerciseDetails(exerciseName: exercise.rawValue)
                    } label: {
                        Text(exercise.rawValue)
                    }
                }
            }
            
            Section(header: Text("Cardio")) {
                ForEach(HIITBeginnerExercise.allCases, id: \.self) { exercise in
                    NavigationLink {
                        ExerciseDetails(exerciseName: exercise.rawValue)
                    } label: {
                        Text(exercise.rawValue)
                    }
                }
            }
        }
        .preferredColorScheme(.dark)
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Exercise Library")
        
    }
}
#Preview {
    NavigationStack{
        ExcerciseLibrary()
    }
    .environmentObject(BasicInfoManager())
    .environmentObject(WorkoutManager())

}
