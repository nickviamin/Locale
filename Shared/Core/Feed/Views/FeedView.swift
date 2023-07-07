//
//  FeedView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject var cartViewModel = CartViewModel()
    @State private var selectedFilter: FeedViewModel = .tuesday
    @Namespace var animation
    @ObservedObject var viewModel = FeedViewModelExtension()
    @State private var showCartView = false
    
    var body: some View {
        VStack(spacing: 5) {
            Spacer()
            HStack(alignment: .top, spacing: 4) {
                Text("Shopping For: Bay Area")
                    .foregroundColor(.gray)
                    .font(.subheadline).bold()
                    .offset(x: 5)
                Spacer()
                Button {
                    showCartView.toggle()
                } label: {
                    CartButton(numberOfProducts: cartViewModel.products.count)
                        .foregroundColor(.gray)
                }
                Spacer()
                    .frame(width: 15)
            }
            
            HStack(spacing: 6) {
                Text("Delivery On:")
                    .foregroundColor(.gray)
                    .font(.subheadline).bold()
                    .offset(x: -7)
                ForEach(FeedViewModel.allCases, id: \.rawValue) { item in
                    VStack {
                        if item.title == "Tuesday" {
                            HStack(spacing: 6) {
                                if Date.today().next(.saturday) < Date.today().next(.tuesday) {
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
                                Text(min(Date.today().next(.saturday), Date.today().next(.tuesday)), format: .dateTime.day().month())
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == item ? .semibold : .regular)
                                    .foregroundColor(selectedFilter == item ? .black : .gray)
                                    .offset(y: 8)
                            }
                        } else {
                            HStack(spacing: 6) {
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
                                    .offset(y: 8)
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
            Divider().frame(width: 400)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Locale Explorer")
                            .font(Font.custom(FontsManager.Fonts.trebBold, size: 30))
                            .offset(x: 4)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(viewModel.featuredProducts) { product in
                                FeedItemView(product: product)
                                    .environmentObject(cartViewModel)
                            }
                            Spacer()
                                .frame(width: 0)
                        }
                    }
                    HStack {
                        Text("What's Hot This Week?")
                            .font(Font.custom(FontsManager.Fonts.trebBold, size: 30))
                            .offset(x: 4)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            
                            ForEach(viewModel.products) { product in
                                FeedItemView(product: product)
                                    .environmentObject(cartViewModel)
                            }
                             
                            Spacer()
                                .frame(width: 0)
                        }
                    }
                    .fullScreenCover(isPresented: $showCartView) {
                        CartView()
                            .environmentObject(cartViewModel)
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
