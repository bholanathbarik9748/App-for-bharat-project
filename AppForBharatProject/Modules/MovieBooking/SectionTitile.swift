//
//  SectionTitile.swift
//  AppForBharatProject
//
//  Created by Bholanath Barik on 28/10/24.
//

import SwiftUI

struct SectionTitle: View {
    let title : String
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.headline)  // Adjust font size and weight
                .fontWeight(.bold)
                .padding(.horizontal)

            Divider()
                .padding(.horizontal)
        }
    }
}

struct SectionTitle_Previews: PreviewProvider {
    static var previews: some View {
        // Initialize MovieBooking with a presenter instance
        SectionTitle(title: "Section Title")
    }
}
