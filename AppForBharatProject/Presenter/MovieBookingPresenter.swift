//
//  MovieBookingPresenter.swift
//  AppForBharatProject
//
//  Created by Bholanath Barik on 28/10/24.
//

import SwiftUI

import SwiftUI

class MovieBookingPresenter: ObservableObject {
    @Published var carouselImages: [String] = []
    @Published var timeRemaining: String = ""
    @Published var horizontalItems: [String] = []
    @Published var productDetail: String = ""
    
    private let interactor: MovieBookingInteractor?
    
    // Primary initializer
    init(interactor: MovieBookingInteractor?) {
        self.interactor = interactor
    }
    
    // Convenience initializer for preview using MockData
    convenience init() {
        self.init(interactor: nil)
        self.carouselImages = MockData.carouselImages
        self.timeRemaining = MockData.timeRemaining
        self.horizontalItems = MockData.horizontalItems
        self.productDetail = MockData.productDetail
    }
    
    func loadContent() {
        guard let interactor = interactor else { return }
        let data = interactor.fetchStaticData()
        carouselImages = data.carouselImages
        timeRemaining = data.timeRemaining
        horizontalItems = data.horizontalItems
        productDetail = data.productDetail
    }
}
