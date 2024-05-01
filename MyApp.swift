import SwiftUI

@main
struct MyApp: App {
    @StateObject var basicInfoManager = BasicInfoManager()
    @StateObject var workouts = WorkoutManager()
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                TabView{
                    BMIView()
                }
                    
            }
            .environmentObject(basicInfoManager)
            .environmentObject(workouts)
                
        }
    }
}
