//
//  FeedViewModel.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import Foundation

enum FeedViewModel: Int, CaseIterable {
    case tuesday
    case saturday
    
    var title: String {
        switch self {
        case .tuesday: return "Tuesday"
        case .saturday: return "Saturday"
        }
    }
}



