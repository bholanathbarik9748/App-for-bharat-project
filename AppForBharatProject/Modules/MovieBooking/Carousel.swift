//
//  CarouselView.swift
//  AppForBharatProject
//
//  Created by Bholanath Barik on 28/10/24.
//

import SwiftUI

struct Carousel: View {
    let imageUrls: [String]

    var body: some View {
        TabView {
            ForEach(imageUrls, id: \.self) { url in
                AsyncImage(url: URL(string: url)) { phase in
                    switch phase {
                    case .empty:
                        // Placeholder view
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 200)
                            .cornerRadius(12)
                            .padding(.horizontal)
                    case .success(let image):
                        // Successfully View
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .cornerRadius(12)
                            .padding(.horizontal)
                    case .failure:
                        // Error view
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                    @unknown default:
                        EmptyView()
                    }
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 200)
    }
}

#Preview {
    // Sample URLs for previewing the Carousel component
    Carousel(imageUrls: [
        "https://images.alphacoders.com/785/thumb-1920-785945.jpg",
        "https://images.alphacoders.com/785/thumb-1920-785945.jpg",
        "https://images.alphacoders.com/785/thumb-1920-785945.jpg"
    ])
}
