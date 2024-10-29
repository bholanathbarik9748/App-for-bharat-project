//
//  MovieDetails.swift
//  AppForBharatProject
//
//  Created by Bholanath Barik on 28/10/24.
//

import SwiftUI

import SwiftUI

struct MovieDetail: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // Special Tag
            Text("SPECIAL TAG - BLOCKBUSTER")
                .font(.caption)
                .foregroundColor(.pink)
                .bold()
            
            // Title
            Text("Title - Captain America: Civil War")
                .font(.title2)
                .bold()
            
            // Body Text
            Text("Body text - When the world is taken by darkness, A hero will rise.")
                .font(.body)
                .foregroundColor(.gray)
            
            // Location
            HStack(spacing: 4) {
                Image(systemName: "mappin.and.ellipse")
                    .foregroundColor(.pink)
                Text("Cinephile, Bangalore")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            // Date and Time
            HStack(spacing: 4) {
                Image(systemName: "calendar")
                    .foregroundColor(.pink)
                Text("8:30 PM, 28th July, Wednesday")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail()
    }
}
