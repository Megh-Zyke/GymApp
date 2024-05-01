//
//  ExcerciseDetails.swift
//  gym
//
//  Created by Meghs on 17/02/24.
//

import Foundation

struct ExerciseDetail {
    let name: String
    let type: String
    let instructions: String
    let muscleGroups: [String]
    let variations: [String]
}

struct ExerciseDatabase {
    static let exercises: [String: ExerciseDetail] = [
        "Bench-Press": ExerciseDetail(
            name: "Bench Press",
            type: "Upper Body",
            instructions: "Lie on a bench and press the weight upwards.",
            muscleGroups: ["Chest", "Shoulders", "Triceps"],
            variations: ["Dumbbell Bench Press", "Incline Bench Press"]
        ),
        
        "Push-Ups": ExerciseDetail(
            name: "Push Ups",
            type: "Upper Body",
            instructions: "Assume a plank position and lower your body by bending your arms.",
            muscleGroups: ["Chest", "Shoulders", "Triceps"],
            variations: ["Wide Grip Push-Ups", "Diamond Push-Ups"]
        ),
        
        "Pull-Ups": ExerciseDetail(
            name: "Pull Ups",
                type: "Upper Body",
                instructions: "Grab the pull-up bar with an overhand grip, hands shoulder-width apart. Hang freely with your arms fully extended. Pull yourself up by flexing the elbows while keeping your shoulders down and back. Continue until your chin passes the bar. Lower yourself down with control.",
                muscleGroups: ["Back", "Biceps"],
                variations: ["Chin-Ups", "Wide Grip Pull-Ups", "Assisted Pull-Ups"]
        ),
        "Dumbbell-Rows" : ExerciseDetail(
            name: "Dumbbell Rows",
            type: "Upper Body",
            instructions: "Hold a dumbbell in each hand with palms facing your torso. Bend your knees slightly and bend your torso forward by bending at the waist. Keep your back straight until it is almost parallel to the floor. Pull the dumbbells to the side of your chest, keeping your upper arms close to your torso and elbows pointing upward. Slowly lower the weight back to the starting position.",
            muscleGroups: ["Back", "Biceps"],
            variations: ["Single-Arm Dumbbell Rows", "Incline Dumbbell Rows"]
        ),
        "Shoulder-Press" : ExerciseDetail(
            name: "Shoulder Press",
            type: "Upper Body",
            instructions: "Hold a dumbbell in each hand at shoulder height, palms facing forward. Press the weights overhead until your arms are fully extended. Lower the weights back to the starting position with control.",
            muscleGroups: ["Shoulders", "Triceps"],
            variations: ["Dumbbell Shoulder Press", "Barbell Shoulder Press"]
        ),
        "Bicep-Curls" : ExerciseDetail(
            name: "Bicep Curls",
            type: "Upper Body",
            instructions: "Hold a dumbbell in each hand, arms fully extended at your sides, palms facing forward. Keeping your upper arms stationary, curl the weights while contracting your biceps. Continue until the dumbbells are at shoulder level. Slowly lower the weights back to the starting position.",
            muscleGroups: ["Biceps"],
            variations: ["Hammer Curls", "Preacher Curls"]
        )
        ,
        "Tricep-Dips" : ExerciseDetail(
            name: "Tricep Dips",
            type: "Upper Body",
            instructions: "Position yourself on parallel bars with your arms fully extended and your body upright. Lower your body by bending your elbows until your upper arms are parallel to the floor. Push yourself back up to the starting position by straightening your arms.",
            muscleGroups: ["Triceps"],
            variations: ["Bench Dips", "Weighted Dips"]
        ),
        "Lat-Pulldowns" : ExerciseDetail(
            name: "Lat Pulldowns",
            type: "Upper Body",
            instructions: "Sit down at a lat pulldown machine and grip the bar with an overhand grip, hands wider than shoulder-width apart. Pull the bar down towards your chest while keeping your torso stationary. Slowly return the bar to the starting position with control.",
            muscleGroups: ["Back", "Biceps"],
            variations: ["Reverse Grip Lat Pulldown", "Close Grip Lat Pulldown"]
        )
        ,
        "Chest-Flyes" : ExerciseDetail(
            name: "Chest Flyes",
            type: "Upper Body",
            instructions: "Lie down on a flat bench with a dumbbell in each hand, arms extended above your chest and palms facing inward. Lower the weights out to the sides in a wide arc until you feel a stretch in your chest. Bring the weights back up to the starting position by squeezing your chest muscles.",
            muscleGroups: ["Chest"],
            variations: ["Incline Chest Flyes", "Cable Chest Flyes"]
        )
        ,
        "Arnold-Press" : ExerciseDetail(
            name: "Arnold Press",
            type: "Upper Body",
            instructions: "Sit on a bench with back support and hold a dumbbell in each hand at shoulder height with palms facing you. Press the dumbbells overhead while rotating your palms to face forward. Lower the weights back down to shoulder height while rotating your palms back towards you.",
            muscleGroups: ["Shoulders", "Triceps"],
            variations: ["Seated Arnold Press", "Standing Arnold Press"]
        )
        ,
        "Hammer-Curls" : ExerciseDetail(
            name: "Hammer Curls",
            type: "Upper Body",
            instructions: "Hold a dumbbell in each hand with palms facing your torso and arms fully extended. Keep your elbows close to your torso and curl the weights while contracting your biceps. Continue until the dumbbells are at shoulder level. Slowly lower the weights back to the starting position.",
            muscleGroups: ["Biceps"],
            variations: ["Alternating Hammer Curls", "Cross Body Hammer Curls"]
        )
        ,
        "skull-Crushers" : ExerciseDetail(
            name: "Skull Crushers",
            type: "Upper Body",
            instructions: "Lie on a flat bench with a barbell or dumbbells in your hands extended above your chest. Bend your elbows and slowly lower the weight towards your forehead while keeping your upper arms stationary. Extend your arms to lift the weight back to the starting position.",
            muscleGroups: ["Triceps"],
            variations: ["Dumbbell Skull Crushers", "EZ-Bar Skull Crushers"]
        )
        ,
        "Lateral-Raises" : ExerciseDetail(
            name: "Lateral Raises",
            type: "Upper Body",
            instructions: "Hold a dumbbell in each hand with arms at your sides and palms facing inward. Raise the weights directly out to your sides until they reach shoulder height. Slowly lower the weights back to the starting position with control.",
            muscleGroups: ["Shoulders"],
            variations: ["Cable Lateral Raises", "Front and Lateral Raises"]
        )
        ,
        "Bent-Over-Rows" : ExerciseDetail(
            name: "Bent Over Rows",
            type: "Upper Body",
            instructions: "Hold a barbell or dumbbells with an overhand grip and bend forward at the waist, keeping your back straight. Pull the weight towards your lower chest while keeping your elbows close to your body. Slowly lower the weight back down to the starting position.",
            muscleGroups: ["Back", "Biceps"],
            variations: ["T-Bar Rows", "Single-Arm Dumbbell Rows"]
        )
        ,
        "Squats": ExerciseDetail(
                   name: "Squats",
                   type: "Lower Body",
                   instructions: "Stand with feet shoulder-width apart, chest up, and core engaged. Lower your body by bending your knees and hips until your thighs are parallel to the ground. Keep your knees aligned with your toes. Push through your heels to return to the starting position.",
                   muscleGroups: ["Quadriceps", "Glutes", "Hamstrings"],
                   variations: ["Barbell Squats", "Front Squats", "Sumo Squats"]
               ),
               "Lunges": ExerciseDetail(
                   name: "Lunges",
                   type: "Lower Body",
                   instructions: "Step forward with one leg and lower your body until both knees are bent at a 90-degree angle. Your front knee should be aligned with your ankle and your back knee should hover just above the ground. Push through your front heel to return to the starting position.",
                   muscleGroups: ["Quadriceps", "Glutes", "Hamstrings"],
                   variations: ["Walking Lunges", "Reverse Lunges", "Dumbbell Lunges"]
               ),
               "Deadlifts": ExerciseDetail(
                   name: "Deadlifts",
                   type: "Lower Body",
                   instructions: "Stand with feet hip-width apart, toes pointing forward, and a barbell on the ground in front of you. Hinge at the hips and bend your knees to lower your torso and grasp the bar with an overhand grip. Keep your back straight as you stand up, driving through your heels and bringing the barbell up to hip level.",
                   muscleGroups: ["Lower Back", "Glutes", "Hamstrings"],
                   variations: ["Romanian Deadlifts", "Sumo Deadlifts", "Trap Bar Deadlifts"]
               ),
               "Leg-Press": ExerciseDetail(
                   name: "Leg Press",
                   type: "Lower Body",
                   instructions: "Sit on the leg press machine with your back flat against the backrest and feet shoulder-width apart on the footplate. Push the weight away by extending your knees, keeping your back flat against the pad. Slowly lower the weight back down with control.",
                   muscleGroups: ["Quadriceps", "Glutes", "Hamstrings"],
                   variations: ["Single-Leg Press", "Hack Squat Machine"]
               ),
               "Calf-Raises": ExerciseDetail(
                   name: "Calf Raises",
                   type: "Lower Body",
                   instructions: "Stand with feet hip-width apart and hold onto a stable surface for balance. Rise up onto the balls of your feet by pushing through your toes, then slowly lower your heels back down below the level of the step.",
                   muscleGroups: ["Calves"],
                   variations: ["Seated Calf Raises", "Donkey Calf Raises"]
               ),
               "Leg-Curls": ExerciseDetail(
                   name: "Leg Curls",
                   type: "Lower Body",
                   instructions: "Lie face down on the leg curl machine with your legs straight and the pad resting just above your heels. Curl your heels toward your glutes by flexing your knees, then slowly lower the weight back down.",
                   muscleGroups: ["Hamstrings"],
                   variations: ["Seated Leg Curls", "Standing Leg Curls"]
               ),
               "Leg-Extensions": ExerciseDetail(
                   name: "Leg Extensions",
                   type: "Lower Body",
                   instructions: "Sit on the leg extension machine with your knees bent at a 90-degree angle and the pad resting on your shins. Extend your legs until they are straight, then slowly lower the weight back down with control.",
                   muscleGroups: ["Quadriceps"],
                   variations: ["Single-Leg Extensions", "Machine Hack Squats"]
               ),
               "Romanian-Deadlifts": ExerciseDetail(
                   name: "Romanian Deadlifts",
                   type: "Lower Body",
                   instructions: "Stand with feet hip-width apart and hold a barbell in front of your thighs with an overhand grip. Hinge at the hips, keeping your back straight, and lower the barbell towards the ground until you feel a stretch in your hamstrings. Engage your glutes to return to the starting position.",
                   muscleGroups: ["Lower Back", "Glutes", "Hamstrings"],
                   variations: ["Dumbbell Romanian Deadlifts", "Kettlebell Romanian Deadlifts"]
               ),
               "Hip-Thrusts": ExerciseDetail(
                   name: "Hip Thrusts",
                   type: "Lower Body",
                   instructions: "Sit on the ground with your upper back against a bench and a barbell over your hips. Bend your knees and plant your feet flat on the ground. Drive through your heels to lift your hips towards the ceiling until your body forms a straight line from shoulders to knees. Squeeze your glutes at the top, then lower your hips back down with control.",
                   muscleGroups: ["Glutes", "Hamstrings"],
                   variations: ["Single-Leg Hip Thrusts", "Weighted Hip Thrusts"]
               ),
               "Bulgarian-Split-Squats": ExerciseDetail(
                   name: "Bulgarian Split Squats",
                   type: "Lower Body",
                   instructions: "Stand with your back to a bench and place one foot on the bench behind you. Lower your hips towards the ground by bending your front knee until your thigh is parallel to the ground. Push through your front heel to return to the starting position.",
                   muscleGroups: ["Quadriceps", "Glutes", "Hamstrings"],
                   variations: ["Elevated Bulgarian Split Squats", "Bulgarian Split Squat Jumps"]
               ),
               "Box-Jumps": ExerciseDetail(
                   name: "Box Jumps",
                   type: "Lower Body",
                   instructions: "Stand in front of a sturdy box or platform with feet shoulder-width apart. Bend your knees and swing your arms back, then explosively jump onto the box, landing softly with both feet. Step or jump back down to the starting position and repeat.",
                   muscleGroups: ["Quadriceps", "Glutes", "Calves"],
                   variations: ["Depth Jumps", "Single-Leg Box Jumps"]
               ),
               "Pistol-Squats": ExerciseDetail(
                   name: "Pistol Squats",
                   type: "Lower Body",
                   instructions: "Stand on one leg with the other leg extended in front of you. Squat down on the standing leg while keeping the extended leg off the ground. Lower until your thigh is parallel to the ground, then push through your heel to return to the starting position.",
                   muscleGroups: ["Quadriceps", "Glutes", "Hamstrings"],
                   variations: ["Assisted Pistol Squats", "Elevated Pistol Squats"]
               )
        ,
        "Jumping-Jacks": ExerciseDetail(
                    name: "Jumping Jacks",
                    type: "Cardio",
                    instructions: "Start with feet together and arms at your sides. Jump up, spreading your legs shoulder-width apart while raising your arms overhead. Jump back to the starting position and repeat.",
                    muscleGroups: ["Full Body"],
                    variations: []
                ),
                "Mountain-Climbers": ExerciseDetail(
                    name: "Mountain Climbers",
                    type: "Cardio",
                    instructions: "Start in a plank position with your hands under your shoulders and core engaged. Drive one knee towards your chest, then quickly switch legs, alternating the movement as if you are climbing a mountain.",
                    muscleGroups: ["Core", "Legs"],
                    variations: []
                ),
                "High-Knees": ExerciseDetail(
                    name: "High Knees",
                    type: "Cardio",
                    instructions: "Stand with feet hip-width apart. Drive one knee towards your chest, then quickly switch legs, alternating the movement as if you are running in place.",
                    muscleGroups: ["Legs", "Core"],
                    variations: []
                ),
                "Burpees": ExerciseDetail(
                    name: "Burpees",
                    type: "Full Body",
                    instructions: "Start in a standing position. Drop into a squat position and place your hands on the ground. Kick your feet back into a plank position, perform a push-up, then jump your feet back to the squat position. Jump up explosively, reaching your arms overhead.",
                    muscleGroups: ["Full Body"],
                    variations: []
                ),
                "Butt-Kicks": ExerciseDetail(
                    name: "Butt Kicks",
                    type: "Cardio",
                    instructions: "Start with feet hip-width apart. Run in place, kicking your heels up towards your glutes with each step.",
                    muscleGroups: ["Legs", "Hamstrings"],
                    variations: []
                ),
                "Skaters": ExerciseDetail(
                    name: "Skaters",
                    type: "Cardio",
                    instructions: "Start with feet hip-width apart. Jump to the right, landing on your right foot and crossing your left leg behind you. Reverse the movement to jump to the left, landing on your left foot and crossing your right leg behind you.",
                    muscleGroups: ["Legs", "Glutes"],
                    variations: []
                ),
                "Jump-Squats": ExerciseDetail(
                    name: "Jump Squats",
                    type: "Lower Body",
                    instructions: "Start with feet shoulder-width apart. Perform a squat, then explode upwards into a jump, reaching your arms overhead.",
                    muscleGroups: ["Quadriceps", "Glutes", "Calves"],
                    variations: []
                ),
                "Bicycle-Crunches": ExerciseDetail(
                    name: "Bicycle Crunches",
                    type: "Core",
                    instructions: "Lie on your back with hands behind your head and legs raised, knees bent at 90 degrees. Bring your right elbow towards your left knee while straightening your right leg. Switch sides, bringing your left elbow towards your right knee while straightening your left leg. Continue alternating sides.",
                    muscleGroups: ["Abdominals", "Obliques"],
                    variations: []
                ),
                "Russian-Twists": ExerciseDetail(
                    name: "Russian Twists",
                    type: "Core",
                    instructions: "Sit on the ground with knees bent and feet lifted, balancing on your glutes. Lean back slightly and clasp your hands together in front of you. Rotate your torso to the right, then to the left, keeping your core engaged and feet off the ground.",
                    muscleGroups: ["Obliques"],
                    variations: []
                ),
                "Plank": ExerciseDetail(
                    name: "Plank",
                    type: "Core",
                    instructions: "Start in a push-up position with hands under your shoulders and body forming a straight line from head to heels. Engage your core and hold the position, keeping your back flat and avoiding sagging or arching.",
                    muscleGroups: ["Core"],
                    variations: []
                ),
                "Alternating-Lunges": ExerciseDetail(
                    name: "Alternating Lunges",
                    type: "Lower Body",
                    instructions: "Stand with feet hip-width apart. Take a step forward with your right foot and lower your body until both knees are bent at a 90-degree angle. Push off your right foot to return to the starting position, then repeat on the left side.",
                    muscleGroups: ["Quadriceps", "Glutes", "Hamstrings"],
                    variations: []
                ),
                "Side-Plank": ExerciseDetail(
                    name: "Side Plank",
                    type: "Core",
                    instructions: "Lie on your side with legs extended and feet stacked. Prop your body up on your elbow and forearm, lifting your hips until your body forms a straight line from head to heels. Hold the position, then repeat on the other side.",
                    muscleGroups: ["Core", "Obliques"],
                    variations: []
                ),
                "Wall-Sit": ExerciseDetail(
                    name: "Wall Sit",
                    type: "Lower Body",
                    instructions: "Stand with your back against a wall and lower your body until your thighs are parallel to the ground, as if sitting in an invisible chair. Hold the position, keeping your back flat against the wall and thighs parallel to the ground.",
                    muscleGroups: ["Quadriceps"],
                    variations: []
                )
    ]
    
    static func getExerciseDetails(for name: String) -> ExerciseDetail? {
        return exercises[name]
    }
}

