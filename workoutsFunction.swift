import SwiftUI

struct WorkoutListUpperBody: View {
    @State var workouts: [Workout]
    var level : String
    
    var body: some View {
        if let firstWorkout = workouts.first {
            var upperBodyExercises = firstWorkout.exercises
            
            return AnyView(
                VStack {
                    List {
                        ForEach(upperBodyExercises, id: \.self) { exercise in
                            NavigationLink(destination: ExerciseDetails(exerciseName: exercise)) {
                                Text(exercise)
                                    .font(.body)
                                    .foregroundColor(Color.white)
                            }
                        }
                        .onDelete(perform: { indexSet in
                            upperBodyExercises.remove(atOffsets: indexSet)
                        })
                    }
                    .preferredColorScheme(.dark)
                    .listStyle(.automatic)
                    .navigationBarTitle("Upper Body Workouts", displayMode: .inline)
                    .navigationBarItems(trailing: NavigationLink(destination: addExercise(workouts: workouts, level: level)) {
                        Image(systemName: "plus")
                    })

                }
            )
        } else {
            return AnyView(EmptyView())
        }
    }

}

struct WorkoutListLowerBody: View {
    var workouts: [Workout]
    
    var body: some View {
            if workouts.count >= 2 {
                var lowerBodyExercises = workouts[1].exercises
                
                return AnyView(
                    List {
                        ForEach(workouts[1].exercises, id: \.self) { exercise in
                                   NavigationLink(destination: ExerciseDetails(exerciseName: exercise) ){
                                       Text(exercise)
                                           .font(.body)
                                           .foregroundColor(Color.white)
                        }
                        }
                        .onDelete(perform: { indexSet in
                            lowerBodyExercises.remove(atOffsets: indexSet)
                          
                        })
                    }
                        .preferredColorScheme(.dark)
                    .listStyle(.automatic)
                    .navigationBarItems(trailing: NavigationLink(destination: addExerciselb(workouts: workouts)) {
                                        Image(systemName: "plus")
                    })
                )
            } else {
                return AnyView(EmptyView())
            }
        }
}
struct WorkoutListCardio: View {
    var workouts: [Workout]
    
    var body: some View {
            if workouts.count >= 3 {
                 var upperBodyExercises = workouts[2].exercises
                
                return AnyView(
                    List {
                        ForEach(upperBodyExercises, id: \.self) { exercise in
                                   NavigationLink(destination: ExerciseDetails(exerciseName: exercise) ){
                                       Text(exercise)
                                           .font(.body)
                                           .foregroundColor(Color.white)
                        }
                        }
                        .onDelete(perform: { indexSet in
                            upperBodyExercises.remove(atOffsets: indexSet)
                        })
                    }
                    .colorScheme(.dark)
                    
                    .listStyle(.automatic)
                    .navigationBarTitle("Cardio", displayMode: .inline)
                    .navigationBarItems(trailing: NavigationLink(destination: addExercisec(workouts: workouts)) {
                        Image(systemName: "plus")
                    })
                )
            } else {
                return AnyView(EmptyView())
            }
        }
}
