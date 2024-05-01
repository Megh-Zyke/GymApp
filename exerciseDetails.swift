//
//  exerciseDetails.swift
//  gym
//
//  Created by Meghs on 17/02/24.
//

import SwiftUI

struct ExerciseDetails: View {
    var exerciseName: String
  

    var body: some View {
        if let Details = ExerciseDatabase.getExerciseDetails(for: exerciseName) {
            
            
            VStack(alignment: .leading, spacing: 20) {
                
                Text(Details.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(Details.type)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                GifImage(exerciseName)
       
                    .scaledToFit()
                    .padding(.leading,20)
                
                ScrollView{
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Instructions 🏋️ :")
                            .font(.headline)
                        
                        Text(Details.instructions)
                            .frame(alignment: .center)
                        
                        Text("Muscle Groups Targeted 💪:")
                            .font(.headline)
                        
                        ForEach(Details.muscleGroups, id: \.self) { muscleGroup in
                            Text("\(muscleGroup)")
                        }
                        
                    }
                }
                
            }
            .preferredColorScheme(.dark)
                
            .padding()
            .navigationBarTitle("", displayMode: .inline) // Hide navigation title
            
            
            Spacer()

            
        } else {
            Text("Exercise details not found.")
        }
            }
}



#Preview {
    ExerciseDetails(
        exerciseName: "Triceps-Dips"
    )
}
