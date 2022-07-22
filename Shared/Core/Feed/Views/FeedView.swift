//
//  FeedView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import SwiftUI

struct FeedView: View {
    
    @State private var selectedFilter: FeedViewModel = .tuesday
    @Namespace var animation
    
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            HStack(alignment: .top, spacing: 4) {
                Text("Shopping For: Bay Area")
                    .foregroundColor(.gray)
                    .font(.subheadline).bold()
                    .offset(x: 5)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "cart")
                        .offset(x: -20)
                        .foregroundColor(.gray)
                }
            }
            
            HStack(spacing: 8) {
                Text("Delivery On:")
                    .foregroundColor(.gray)
                    .font(.subheadline).bold()
                    .offset(x: -7)
                ForEach(FeedViewModel.allCases, id: \.rawValue) { item in
                    VStack {
                        if item.title == "Tuesday" {
                            HStack {
                                if Date.today().next(.saturday) < Date.today().next(.tuesday) {
                                    Text("Saturday,")
                                        .font(.subheadline)
                                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                                        .foregroundColor(selectedFilter == item ? .black : .gray)
                                        .offset(y: 7)
                                } else {
                                    Text("Tuesday,")
                                        .font(.subheadline)
                                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                                        .foregroundColor(selectedFilter == item ? .black : .gray)
                                        .offset(y: 7)
                                }
                                Text(min(Date.today().next(.saturday), Date.today().next(.tuesday)), format: .dateTime.day().month())
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == item ? .semibold : .regular)
                                    .foregroundColor(selectedFilter == item ? .black : .gray)
                                    .offset(y: 8)
                            }
                        } else {
                            HStack {
                                if Date.today().next(.saturday) > Date.today().next(.tuesday) {
                                    Text("Saturday,")
                                        .font(.subheadline)
                                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                                        .foregroundColor(selectedFilter == item ? .black : .gray)
                                        .offset(y: 8)
                                } else {
                                    Text("Tuesday,")
                                        .font(.subheadline)
                                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                                        .foregroundColor(selectedFilter == item ? .black : .gray)
                                        .offset(y: 8)
                                }
                                Text(max(Date.today().next(.saturday), Date.today().next(.tuesday)), format: .dateTime.day().month())
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == item ? .semibold : .regular)
                                    .foregroundColor(selectedFilter == item ? .black : .gray)
                                    .offset(y: 9)
                                }
                            }
                        if selectedFilter == item {
                            Capsule()
                                .foregroundColor(Color(red: 251 / 255, green: 143 / 255, blue: 104 / 255))
                                .frame(width: 130, height: 3)
                                .matchedGeometryEffect(id: "filter", in: animation)
                        } else {
                            Capsule()
                                .foregroundColor(Color(.clear))
                                .frame(width: 130, height: 3)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            self.selectedFilter = item
                        }
                    }
                }
            }
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Locale Explorer")
                            .font(Font.custom(FontsManager.Fonts.treb, size: 30))
                            .offset(x: 4)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 4) {
                            FeedItemView(imageName: "chorizo", client: "cofax", itemName: "Chorizo Burrito", price: 14, quantity: "1", qType: true)
                            
                            FeedItemView(imageName: "veggie", client: "cofax", itemName: "Veggie Burrito", price: 17, quantity: "1", qType: true)
                            
                            FeedItemView(imageName: "bacon", client: "cofax", itemName: "Bacon Burrito", price: 17, quantity: "1", qType: true)
                        }
                    }
                    HStack {
                        Text("What's Hot This Week?")
                            .font(Font.custom(FontsManager.Fonts.treb, size: 30))
                            .offset(x: 4)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 4) {
                            FeedItemView(imageName: "peaches", client: "frog hollow farms", itemName: "Organic Flavor Crest Peaches", price: 12, quantity: "1", qType: true)
                            
                            FeedItemView(imageName: "pizza", client: "pizzeria delfina", itemName: "Funghi Pizza", price: 23, quantity: "2", qType: true)
                            
                            FeedItemView(imageName: "italian", client: "oren's hummus", itemName: "Hummus Chicken Bowl Meal", price: 16, quantity: "1", qType: true)
                            
                            FeedItemView(imageName: "granola", client: "manresa bread", itemName: "Almond Granola", price: 10, quantity: "8-10", qType: true)
                            
                            FeedItemView(imageName: "bagels", client: "wise sons", itemName: "Plain Bagels", price: 8, quantity: "4 count", qType: false)
                            
                            FeedItemView(imageName: "cheese", client: "cypress grove", itemName: "Purple Haze Goat Cheese", price: 8, quantity: "4 oz", qType: false)

                            FeedItemView(imageName: "tomato", client: "terra firma farm", itemName: "Organic Cherry Tomatoes", price: 8, quantity: "1 basket", qType: false)

                            FeedItemView(imageName: "milk", client: "strauss family creamery", itemName: "Organic Nonfat Milk", price: 5, quantity: "Half Gallon", qType: false)

                            FeedItemView(imageName: "strawbs", client: "live earth farms", itemName: "Organic Strawberries", price: 5, quantity: "1 clamshell", qType: false)
                        }
                    }
                }
            }
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

extension Date {

  static func today() -> Date {
      return Date()
  }

  func next(_ weekday: Weekday, considerToday: Bool = false) -> Date {
    return get(.next,
               weekday,
               considerToday: considerToday)
  }

  func previous(_ weekday: Weekday, considerToday: Bool = false) -> Date {
    return get(.previous,
               weekday,
               considerToday: considerToday)
  }

    func stripTime(from originalDate: Date) -> Date {
        let components = Calendar.current.dateComponents([.year, .month, .day], from: originalDate)
        let date = Calendar.current.date(from: components)
        return date!
    }

  func get(_ direction: SearchDirection,
           _ weekDay: Weekday,
           considerToday consider: Bool = false) -> Date {

    let dayName = weekDay.rawValue

    let weekdaysName = getWeekDaysInEnglish().map { $0.lowercased() }

    assert(weekdaysName.contains(dayName), "weekday symbol should be in form \(weekdaysName)")

    let searchWeekdayIndex = weekdaysName.firstIndex(of: dayName)! + 1

    let calendar = Calendar(identifier: .gregorian)

    if consider && calendar.component(.weekday, from: self) == searchWeekdayIndex {
      return self
    }

    var nextDateComponent = calendar.dateComponents([.hour, .minute, .second], from: self)
    nextDateComponent.weekday = searchWeekdayIndex

    let date = calendar.nextDate(after: self,
                                 matching: nextDateComponent,
                                 matchingPolicy: .nextTime,
                                 direction: direction.calendarSearchDirection)

    return date!
  }

}

extension Date {
  func getWeekDaysInEnglish() -> [String] {
    var calendar = Calendar(identifier: .gregorian)
    calendar.locale = Locale(identifier: "en_US_POSIX")
    return calendar.weekdaySymbols
  }

  enum Weekday: String {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
  }

  enum SearchDirection {
    case next
    case previous

    var calendarSearchDirection: Calendar.SearchDirection {
      switch self {
      case .next:
        return .forward
      case .previous:
        return .backward
      }
    }
  }
}
