//
//  enumValues.swift
//  gym
//
//  Created by Meghs on 16/02/24.
//

import Foundation


enum UpperBodyExercise: String, CaseIterable {
    case BenchPress = "Bench-Press"
    case PushUps = "Push-Ups"
    case PullUps = "Pull-Ups"
    case DumbbellRows = "Dumbbell-Rows"
    case ShoulderPress = "Shoulder-Press"
    case BicepCurls = "Bicep-Curls"
    case TricepDips = "Tricep-Dips"
    case LatPulldowns = "Lat-Pulldowns"
    case ChestFlyes = "Chest-Flyes"
    case ArnoldPress = "Arnold-Press"
    case HammerCurls = "Hammer-Curls"
    case SkullCrushers = "Skull-Crushers"
    case LateralRaises = "Lateral-Raises"
    case BentOverRows = "Bent-Over-Rows"
}


enum LowerBodyExercise: String, CaseIterable {
    case Squats = "Squats"
    case Lunges = "Lunges"
    case Deadlifts = "Deadlifts"
    case LegPress = "Leg-Press"
    case CalfRaises = "Calf-Raises"
    case LegCurls = "Leg-Curls"
    case LegExtensions = "Leg-Extensions"
    case RomanianDeadlifts = "Romanian-Deadlifts"
    case HipThrusts = "Hip-Thrusts"
    case BulgarianSplitSquats = "Bulgarian-Split-Squats"
    case BoxJumps = "Box-Jumps"
    case PistolSquats = "Pistol-Squats"
}

enum HIITBeginnerExercise: String, CaseIterable {
    case JumpingJacks = "Jumping-Jacks"
    case MountainClimbers = "Mountain-Climbers"
    case HighKnees = "High-Knees"
    case Burpees = "Burpees"
    case ButtKicks = "Butt-Kicks"
    case Skaters = "Skaters"
    case JumpSquats = "Jump-Squats"
    case BicycleCrunches = "Bicycle-Crunches"
    case RussianTwists = "Russian-Twists"
    case Plank = "Plank"
    case AlternatingLunges = "Alternating-Lunges"
    case SidePlank = "Side-Plank"
    case WallSit = "Wall-Sit"
}
