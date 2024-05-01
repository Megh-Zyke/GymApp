//
//  TabViewComponenets.swift
//  gym
//
//  Created by Meghs on 17/02/24.
//

import SwiftUI

struct tabComponents: View {
    @EnvironmentObject var basicInfoManager : BasicInfoManager
    @EnvironmentObject var workouts  : WorkoutManager

    var body: some View {
        TabView{
            workOutPlan()
                .tabItem { Image(systemName: "house") }
        
                ExcerciseLibrary()
                .tabItem { Image(systemName: "book") }
        }
        .preferredColorScheme(.dark)
        
    }
}

#Preview {
    NavigationStack{
        tabComponents()
    }
    .environmentObject(BasicInfoManager())
    .environmentObject(WorkoutManager())
}
