//
//  UserBookingStats.swift
//  AppForBharatProject
//
//  Created by Bholanath Barik on 29/10/24.
//

import SwiftUI

struct UserBookingStats: View {
    let users: [String]  // Replace with user image URLs or names
    let userCount: Int

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: -8) {  // Negative spacing for overlapping effect
                ForEach(0..<6, id: \.self) { _ in
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .background(Color.pink)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                }
            }
            .padding(.bottom, 4)

            Text("Till now ")
                .font(.system(size: 16))
                + Text("\(userCount)+ Users")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.pink)
                + Text(" have already booked tickets.")
                .font(.system(size: 16))
        }
        .padding()
        
    }
}

struct UserBookingStats_Previews: PreviewProvider {
    static var previews: some View {
        UserBookingStats(
            users: ["User1", "User2", "User3", "User4", "User5", "User6"],
            userCount: 10000
        )
        .previewLayout(.sizeThatFits)
    }
}
