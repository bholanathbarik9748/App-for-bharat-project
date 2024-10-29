//
//  CustomTab.swift
//  AppForBharatProject
//
//  Created by Bholanath Barik on 29/10/24.
//

import SwiftUI

struct CustomTab: View {
    @State private var selectedTab = "About"

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Scrollable Tab Bar
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    TabButton(title: "About", isSelected: selectedTab == "About") {
                        selectedTab = "About"
                    }
                    TabButton(title: "Cast", isSelected: selectedTab == "Cast") {
                        selectedTab = "Cast"
                    }
                    TabButton(title: "Timings", isSelected: selectedTab == "Timings") {
                        selectedTab = "Timings"
                    }
                    TabButton(title: "Locations", isSelected: selectedTab == "Locations") {
                        selectedTab = "Locations"
                    }
                    TabButton(title: "Production", isSelected: selectedTab == "Production") {
                        selectedTab = "Production"
                    }
                }
            }

            // Content based on selected tab
            Group {
                switch selectedTab {
                case "About":
                    Text("Captain America: Civil War centers around the conflict between Captain America and Iron Man over governmental control of superheroes. As a result, the Avengers are divided into two opposing teams, leading to a powerful battle that tests friendships and alliances.")
                case "Cast":
                    Text("Starring Chris Evans as Captain America, Robert Downey Jr. as Iron Man, Scarlett Johansson as Black Widow, and many more. The cast brings to life an intense and emotional story of divided loyalties.")
                case "Timings":
                    Text("Available showtimes: 12:00 PM, 3:30 PM, 6:00 PM, and 9:00 PM daily at selected theaters.")
                case "Locations":
                    Text("The movie is available in major theaters nationwide, including AMC, Regal, and Cinemark locations.")
                case "Production":
                    Text("Produced by Marvel Studios, directed by the Russo brothers, with high-octane action scenes and top-tier visual effects.")
                default:
                    Text("Select a tab to see more details.")
                }
            }
            .font(.body)
            .foregroundColor(.gray)
            .padding(.top, 10)
        }
        .padding(.horizontal)
    }
}

struct TabButton: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack {
                Text(title)
                    .font(.system(size: 16, weight: isSelected ? .bold : .regular))
                    .foregroundColor(isSelected ? .pink : .gray)
                if isSelected {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.pink)
                } else {
                    Color.clear.frame(height: 2)
                }
            }
        }
    }
}

struct CustomTab_Previews: PreviewProvider {
    static var previews: some View {
        CustomTab()
            .previewLayout(.sizeThatFits)
    }
}
