//
//  SwiftUIView.swift
//  AppForBharatProject
//
//  Created by Bholanath Barik on 28/10/24.
//

import SwiftUI

struct MovieBooking: View {
    @ObservedObject var presenter: MovieBookingPresenter

    var body: some View {
        VStack(alignment: .leading) {
            SectionTitle(title: "Section Title")
            Carousel(imageUrls: presenter.carouselImages)
            MovieDetail()
            Timer(days: 0, hours: 0, minutes: 0, seconds: 0)
            UserBookingStats(
                users: presenter.horizontalItems,
                userCount: presenter.horizontalItems.count)
            CustomTab()
            Spacer()
        }
    }
}

struct MovieBooking_Previews: PreviewProvider {
    static var previews: some View {
        // Initialize MovieBooking with a presenter instance
        let presenter = MovieBookingPresenter()
        MovieBooking(presenter: presenter)
    }
}
