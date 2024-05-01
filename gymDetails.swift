//
//  gymDetails.swift
//  gym
//
//  Created by user1.0 on 16/02/24.
//

import SwiftUI
struct gymDetails: View {
    @EnvironmentObject var basicInfoManager : BasicInfoManager
    @EnvironmentObject var workouts  : WorkoutManager
    @State private var selectedTimeIndex = 0
    
    let timeOptions = ["Less than 30 minutes", "30-60 minutes", "1-2 hours", "More than 2 hours"]
    @State private var isNavigationActive : Bool = false
    
    var welcomeMessage: String {
            switch selectedTimeIndex {
            case 0:
                return "Looks like there's a newbie to the gym! Let's get caught up on the basics."
            case 1:
                return "You've been putting in some effort! Keep it up and take your workouts to the next level."
            case 2:
                return "You're spending a good amount of time in the gym! Keep pushing yourself and aiming for progress."
            case 3:
                return "Wow, you're spending a lot of time in the gym! You must be dedicated to your fitness goals."
            default:
                return "Welcome to the gym!"
            }
        }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
           
            VStack{
                Text("How long do you spend in the gym 🏋️?")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                Text("We'll use this to recommend workouts")
                    .font(.headline)
                
                Picker(selection: $selectedTimeIndex, label: Text("")) {
                    ForEach(0 ..< timeOptions.count) {
                        Text(self.timeOptions[$0])
                            .foregroundColor(.white)
                    }
                }
                .pickerStyle(.wheel)
                .frame(width: 300)
                
                Text(welcomeMessage)
                    .multilineTextAlignment(.center)
                    .frame(alignment: .center)
                
                Spacer()
                
                Button(action: {
                    isNavigationActive = true
                    basicInfoManager.pushCategory(indexValue: selectedTimeIndex)
                }
                       , label: {
                    Text("Continue")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    
                })
            }
            .foregroundColor(.white)
            .padding()
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitle("")
            .navigationBarHidden(true)
            .background(NavigationLink("", destination: workOutPlan() , isActive: $isNavigationActive))
            
    }
}

#Preview {
    NavigationStack {
        gymDetails()
            .environmentObject(BasicInfoManager())
            .environmentObject(WorkoutManager())
        
    }
}




