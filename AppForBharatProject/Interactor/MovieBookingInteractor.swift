//
//  MovieBookingInteractor.swift
//  AppForBharatProject
//
//  Created by Bholanath Barik on 28/10/24.
//

import Foundation

class MovieBookingInteractor {
    func fetchStaticData() -> MovieBookingEntity {
        // Hard-coded data for static page
        return MovieBookingEntity(
            carouselImages: MockData.carouselImages,
            timeRemaining: MockData.timeRemaining,
            horizontalItems: MockData.horizontalItems,
            productDetail: MockData.productDetail
        )
    }
}
