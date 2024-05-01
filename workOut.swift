//
//  workOut.swift
//  gym
//
//  Created by Meghs on 16/02/24.
//

import SwiftUI

struct WorkoutButton: View {
    let imageName: String
    let title: String
    let level : String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            HStack{
                VStack(alignment: .leading) {
                    Text(title)
                        .multilineTextAlignment(.leading)
                        .frame(alignment: .leading)
                    
                    Text(level)
                        .multilineTextAlignment(.leading)
            
                }
                .foregroundStyle(Color(.white))
                Spacer()
            }
        }
    }
}




#Preview {
    WorkoutButton(imageName: "cardio", title: "cardio" , level: "easy")
}
