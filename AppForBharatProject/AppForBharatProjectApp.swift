//
//  AppForBharatProjectApp.swift
//  AppForBharatProject
//
//  Created by Bholanath Barik on 28/10/24.
//

import SwiftUI

@main
struct AppForBharatProjectApp: App {
    var body: some Scene {
        WindowGroup {
            let presenter = MovieBookingPresenter()
            MovieBooking(presenter: presenter)
        }
    }
}
