//
//  workOutPlan.swift
//  gym
//
//  Created by user1.0 on 16/02/24.
//

import SwiftUI

struct workOutPlan: View {
    @EnvironmentObject var basicInfoManager : BasicInfoManager
    @EnvironmentObject var workouts  : WorkoutManager
    
    @State var type : String = ""
    
    var body: some View {
        ScrollView{
            ZStack{
                
                Color(.black)
                    .ignoresSafeArea()
                ScrollView {
                    VStack{
                        
                        HStack{
                            VStack{
                                Picker("Select Level", selection: $type) {
                                    ForEach(["Beginner", "Intermediate", "Advanced", "Expert"], id: \.self) { level in
                                        Text(level)
                                    }
                                }
                                
                            }
                            
                            Spacer()
                            
                            NavigationLink {
                                ExcerciseLibrary()
                            } label: {
                                Image(systemName: "book")
                            }

                        }
                        NavigationLink(destination: WorkoutListUpperBody(workouts:  WorkoutManager.getWorkoutsForLevel(level: type), level: type)) {
                            WorkoutButton(imageName: "Upper body", title: "Upper Body" , level: type)
                        }
                      
                        
                        NavigationLink(destination: WorkoutListLowerBody(workouts: WorkoutManager.getWorkoutsForLevel(level: type))) {
                            WorkoutButton(imageName: "lower body", title: "Lower Body" , level: type)
                        }
                        
                        
                        NavigationLink(destination: WorkoutListCardio(workouts: WorkoutManager.getWorkoutsForLevel(level: type))) {
                            WorkoutButton(imageName: "cardio", title: "Cardio" , level: type)
                        }
                        
                        
                        
                    }
                    Spacer()
                }.padding()
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
            
        } .preferredColorScheme(.dark)
            .navigationTitle("Select a workout")
            .navigationBarBackButtonHidden()
            .onAppear(perform: {
                type = basicInfoManager.basicInfo.type ??  "Beginner"
            })
    }
}

#Preview {
    NavigationStack {
        workOutPlan()
    }
        .environmentObject(BasicInfoManager())
        .environmentObject(WorkoutManager())
}
