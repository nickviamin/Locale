//
//  DateManager.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/22/22.
//

import Foundation

func getDayOfWeek(_ date:String, format: String) -> String? {
    
    let weekDays = [
        "Tuesday",
        "Saturday"
    ]

    let formatter  = DateFormatter()
    formatter.dateFormat = format
    guard let myDate = formatter.date(from: date) else { return nil }
    
    let myCalendar = Calendar(identifier: .gregorian)
    let weekDay = myCalendar.component(.weekday, from: myDate)
    
    
    return weekDays[weekDay-1]
}
