//
//  FeedView.swift
//  Locale (iOS)
//
//  Created by Nick Viamin on 7/18/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack(alignment: .top, spacing: 4) {
                Text("Shopping For: Bay Area")
                    .foregroundColor(.gray)
                    .font(.subheadline).bold()
                    .offset(x: 5)
                Spacer()
                }
            
            HStack(spacing: 7) {
                Text("Delivery On:")
                    .foregroundColor(.gray)
                    .font(.subheadline).bold()
                Button {
                    
                }label: {
                    Text("Tuesday, July 19th")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .frame(width: 138, height: 30)
                        .foregroundColor(.black)
                        .background(RoundedRectangle(cornerRadius: 20))
                        .foregroundColor(.gray)
                }
                Button {
                    
                }label: {
                    Text("Saturday, July 23rd")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .frame(width: 140, height: 30)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
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
                            VStack(alignment: .leading) {
                                Image("chorizo")
                                    .resizable()
                                    .frame(width:220, height:218)
                                    .scaledToFill()
                                    .offset(x: 4)
                                Text("COFAX")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Chorizo Burrito")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$14")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("1")
                                    Image(systemName: "person.fill")
                                        .foregroundColor(.gray)
                                }
                            }
                            VStack(alignment: .leading) {
                                Image("veggie")
                                    .resizable()
                                    .frame(width:220, height:220)
                                    .scaledToFill()
                                    .offset(x: 1)
                                Text("COFAX")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Veggie Burrito")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$17")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("1")
                                    Image(systemName: "person.fill")
                                        .foregroundColor(.gray)
                                }
                            }
                            VStack(alignment: .leading) {
                                Image("bacon")
                                    .resizable()
                                    .frame(width:220, height:220)
                                    .scaledToFill()
                                    .offset(x: -1)
                                Text("COFAX")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Bacon Burrito")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$17")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("1")
                                    Image(systemName: "person.fill")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    }
                    HStack {
                        Text("What's Hot This Week?")
                            .font(Font.custom(FontsManager.Fonts.treb, size: 30))
                            .offset(x: 4)
                        //Spacer()
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 4) {
                            VStack(alignment: .leading) {
                                Image("peaches")
                                    .resizable()
                                    .frame(width:220, height:218)
                                    .scaledToFill()
                                    .offset(x: 4)
                                Text("FROG HOLLOW FARMS")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Organic Flavor Crest Peaches")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$12")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("1 lb")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                }
                            }
                            VStack(alignment: .leading) {
                                Image("pizza")
                                    .resizable()
                                    .frame(width:220, height:220)
                                    .scaledToFill()
                                    .offset(x: 1)
                                Text("PIZZERIA DELFINA")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Funghi Pizza")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$23")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("2")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                    Image(systemName: "person.fill")
                                        .foregroundColor(.gray)
                                }
                            }
                            VStack(alignment: .leading) {
                                Image("italian")
                                    .resizable()
                                    .frame(width:220, height:220)
                                    .scaledToFill()
                                    .offset(x: -1)
                                Text("OREN'S HUMMUS")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Hummus Chicken Bowl Meal")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$16")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("1")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                    Image(systemName: "person.fill")
                                        .foregroundColor(.gray)
                                }
                            }
                            VStack(alignment: .leading) {
                                Image("granola")
                                    .resizable()
                                    .frame(width:220, height:220)
                                    .scaledToFill()
                                    .offset(x: -1)
                                Text("MANRESA BREAD")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Almond Granola")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$10")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("8-10")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                    Image(systemName: "person.fill")
                                        .foregroundColor(.gray)
                                }
                            }
                            VStack(alignment: .leading) {
                                Image("bagels")
                                    .resizable()
                                    .frame(width:220, height:220)
                                    .scaledToFill()
                                    .offset(x: -1)
                                Text("WISE SONS")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Plain Bagels")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$8")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("4 count")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                }
                            }
                            VStack(alignment: .leading) {
                                Image("croissant")
                                    .resizable()
                                    .frame(width:220, height:220)
                                    .scaledToFill()
                                    .offset(x: -1)
                                Text("BOUCHON BAKERY")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Croissant")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$4")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("1")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                    Image(systemName: "person.fill")
                                        .foregroundColor(.gray)
                                }
                            }
                            VStack(alignment: .leading) {
                                Image("cheese")
                                    .resizable()
                                    .frame(width:220, height:220)
                                    .scaledToFill()
                                    .offset(x: -1)
                                Text("CYPRESS GROVE")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Purple Haze Goat Cheese")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$8")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("4 oz")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                }
                            }
                            VStack(alignment: .leading) {
                                Image("tomato")
                                    .resizable()
                                    .frame(width:220, height:220)
                                    .scaledToFill()
                                    .offset(x: -1)
                                Text("TERRA FIRMA FARM")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Organic Cherry Tomatoes")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$8")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("1 basket")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                }
                            }
                            VStack(alignment: .leading) {
                                Image("milk")
                                    .resizable()
                                    .frame(width:220, height:220)
                                    .scaledToFill()
                                    .offset(x: -1)
                                Text("STRAUSS FAMILY CREAMERY")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Organic Nonfat Milk")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$5")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("Half Gallon")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                }
                            }
                            VStack(alignment: .leading) {
                                Image("strawbs")
                                    .resizable()
                                    .frame(width:220, height:220)
                                    .scaledToFill()
                                    .offset(x: -1)
                                Text("LIVE EARTH FARMS")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .offset(x: 10)
                                Text("Organic Strawberries")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .offset(x: 10)
                                HStack {
                                    Text("$5")
                                        .font(.subheadline)
                                        .offset(x: 10)
                                    Spacer()
                                    Text("1 clamshell")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                        .offset(x: -5)
                                }
                            }
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
