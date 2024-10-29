//
//  TimerView.swift
//  AppForBharatProject
//
//  Created by Bholanath Barik on 28/10/24.
//

import SwiftUI

struct Timer: View {
    let days: Int
    let hours: Int
    let minutes: Int
    let seconds: Int

    var body: some View {
        VStack(alignment: .leading) {
            Text("Booking will close in :")
                .font(.footnote)
                .foregroundStyle(.gray)

            HStack(spacing: 20) {
                CounterView(value: days, label: "Days")
                CounterView(value: hours, label: "Hours")
                CounterView(value: minutes, label: "Mins")
                CounterView(value: seconds, label: "Sec")
            }
        }
        .padding(.horizontal)
    }
}

struct CounterView: View {
    let value: Int
    let label: String

    var body: some View {
        HStack {
            Text("\(value, specifier: "%02d")")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(.pink)
            
            Text(label)
                .font(.system(size: 9))
        }
        .frame(width: 80, height: 50)
        .background(Color("LightGreay"))
        .cornerRadius(10)
        .shadow(radius: 1)
    }
}

struct timer_Previews: PreviewProvider {
    static var previews: some View {
        Timer(days: 0, hours: 0, minutes: 0, seconds: 0)
    }
}
