//
//  workouts.swift
//  gym
//
//  Created by user1.0 on 16/02/24.
//

import Foundation

import Foundation

struct Workout {
    var exercises: [String]
}

class WorkoutManager: ObservableObject{
    static func getWorkoutsForLevel(level: String) -> [Workout] {
        switch level {
        case "Beginner":
            return beginnerWorkouts
        case "Intermediate":
            return intermediateWorkouts
        case "Advanced":
            return advancedWorkouts
        case "Expert":
            return expertWorkouts
        default:
            return []
        }
    }
    
    func addExercise(_ exercise: String, toLevel level: String, at index: Int) {
        var workouts = WorkoutManager.getWorkoutsForLevel(level: level)
            guard index < workouts.count else {
                print("Index out of range.")
                return
            }
            
            workouts[index].exercises.append(exercise)
            
    }
  
}

extension WorkoutManager {
    static var beginnerWorkouts: [Workout] = [
        Workout(exercises: [
            UpperBodyExercise.PushUps.rawValue,
            UpperBodyExercise.DumbbellRows.rawValue,
            UpperBodyExercise.LateralRaises.rawValue,
            UpperBodyExercise.BentOverRows.rawValue,
        ]),
        Workout( exercises: [
            LowerBodyExercise.Squats.rawValue,
            LowerBodyExercise.Lunges.rawValue,
            LowerBodyExercise.CalfRaises.rawValue,
            LowerBodyExercise.LegCurls.rawValue,
            
            LowerBodyExercise.BoxJumps.rawValue
        ]),
        Workout(exercises: [
            HIITBeginnerExercise.JumpingJacks.rawValue,
            HIITBeginnerExercise.MountainClimbers.rawValue,
            HIITBeginnerExercise.HighKnees.rawValue,
            HIITBeginnerExercise.Burpees.rawValue,
            HIITBeginnerExercise.Skaters.rawValue,
            HIITBeginnerExercise.Plank.rawValue
        ])
    ]
    
    static var intermediateWorkouts: [Workout] = [
        Workout( exercises: [
            UpperBodyExercise.BenchPress.rawValue,
            UpperBodyExercise.PullUps.rawValue,
            UpperBodyExercise.ShoulderPress.rawValue,
            UpperBodyExercise.LatPulldowns.rawValue,
            UpperBodyExercise.BicepCurls.rawValue,
            UpperBodyExercise.TricepDips.rawValue
        ]),
        Workout(exercises: [
            LowerBodyExercise.Squats.rawValue,
            LowerBodyExercise.Deadlifts.rawValue,
            LowerBodyExercise.Lunges.rawValue,
            LowerBodyExercise.HipThrusts.rawValue,
        
        ]),
        Workout(exercises: [
            HIITBeginnerExercise.JumpingJacks.rawValue,
            HIITBeginnerExercise.Burpees.rawValue,
            HIITBeginnerExercise.MountainClimbers.rawValue,
            HIITBeginnerExercise.HighKnees.rawValue,
            HIITBeginnerExercise.JumpSquats.rawValue,
            HIITBeginnerExercise.Plank.rawValue
        ])
    ]
    
    static var advancedWorkouts: [Workout] = [
        Workout( exercises: [
            UpperBodyExercise.BenchPress.rawValue,
            UpperBodyExercise.PullUps.rawValue,
            UpperBodyExercise.ShoulderPress.rawValue,
            UpperBodyExercise.LatPulldowns.rawValue,
            UpperBodyExercise.ArnoldPress.rawValue,
            UpperBodyExercise.HammerCurls.rawValue
        ]),
        Workout(exercises: [
            LowerBodyExercise.Deadlifts.rawValue,
            LowerBodyExercise.LegPress.rawValue,
            LowerBodyExercise.RomanianDeadlifts.rawValue,
        
            LowerBodyExercise.HipThrusts.rawValue,
            LowerBodyExercise.BulgarianSplitSquats.rawValue
        ]),
        Workout( exercises: [
            HIITBeginnerExercise.Burpees.rawValue,
            HIITBeginnerExercise.MountainClimbers.rawValue,
            HIITBeginnerExercise.JumpSquats.rawValue,
            
            HIITBeginnerExercise.BicycleCrunches.rawValue,
            HIITBeginnerExercise.RussianTwists.rawValue
        ])
    ]
    
    static var expertWorkouts: [Workout] = [
        Workout( exercises: [
            UpperBodyExercise.BenchPress.rawValue,
            UpperBodyExercise.PullUps.rawValue,
            UpperBodyExercise.ShoulderPress.rawValue,
            UpperBodyExercise.LatPulldowns.rawValue,
            UpperBodyExercise.ArnoldPress.rawValue,
            UpperBodyExercise.HammerCurls.rawValue,
            UpperBodyExercise.ChestFlyes.rawValue,
            UpperBodyExercise.TricepDips.rawValue,
            UpperBodyExercise.BentOverRows.rawValue
        ]),
        Workout( exercises: [
            LowerBodyExercise.Deadlifts.rawValue,
            LowerBodyExercise.Squats.rawValue,
            LowerBodyExercise.Lunges.rawValue,
            LowerBodyExercise.LegPress.rawValue,
            LowerBodyExercise.RomanianDeadlifts.rawValue,
          
            LowerBodyExercise.HipThrusts.rawValue,
            LowerBodyExercise.BulgarianSplitSquats.rawValue,

            LowerBodyExercise.CalfRaises.rawValue
        ]),
        Workout( exercises: [
            HIITBeginnerExercise.Burpees.rawValue,
            HIITBeginnerExercise.MountainClimbers.rawValue,
            HIITBeginnerExercise.JumpSquats.rawValue,
   
            HIITBeginnerExercise.BicycleCrunches.rawValue,
            HIITBeginnerExercise.RussianTwists.rawValue,
            HIITBeginnerExercise.Plank.rawValue,
            HIITBeginnerExercise.SidePlank.rawValue,
            HIITBeginnerExercise.WallSit.rawValue
        ])
    ]
}
