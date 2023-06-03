//
//  ContentView.swift
//  MedicineApp
//
//  Created by Claudio Tendean on 03/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("Color1")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                // Top
                Top()
                
                // Calender
                ScrollCalender()
                Spacer()
                
                // Activity
                ActivityContent()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Top: View {
    var body: some View {
        HStack(alignment: .top){
            Text("Your drug cabinet")
                .font(.system(
                    size: 36,
                    weight: .bold,
                    design: .default))
                .frame(width: 200)
            Spacer()
            ZStack{
                Image(systemName: "bell.fill")
                    .resizable()
                    .frame(width: 25, height: 28)
                    .padding(.top)
                
                Circle().fill(Color.red)
                    .frame(width: 12, height: 12)
                    .padding(.leading, 10)
                
            }
        }
        .padding(.horizontal)
        .padding([.top, .bottom])
    }
}

struct Calender: View {
    var number : String
    var days : String
    var color : UIColor
    var textColor : UIColor
    
    var body: some View {
        VStack{
            Text(self.number)
                .font(.system(
                    size: 28,
                    weight: .bold,
                    design: .rounded))
                .foregroundColor(Color(self.textColor))
            Text(self.days)
                .font(.headline)
                .foregroundColor(Color(self.textColor))
        }
        .padding([.top, .bottom], 35)
        .padding([.leading, .trailing], 20)
        .background(Color(self.color))
        .cornerRadius(30)
    }
}

struct ScrollCalender: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15){
                // Calender Content
                Calender(
                    number: "9",
                    days: "Tue",
                    color: .white,
                    textColor: .black
                )
                Calender(
                    number: "10",
                    days: "Wed",
                    color: .systemPink,
                    textColor: .white
                )
                Calender(
                    number: "11",
                    days: "Thu",
                    color: .white,
                    textColor: .black
                )
                Calender(
                    number: "12",
                    days: "Fri",
                    color: .white,
                    textColor: .black
                )
                Calender(
                    number: "13",
                    days: "Sat",
                    color: .white,
                    textColor: .black
                )
            }
            .padding(.leading, 30)
            .padding(.bottom, 30)
        }
    }
}

struct Lisinopril: View {
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Image("Drug1")
                    .resizable()
                    .frame(width: 50, height: 55)
                    .padding(.trailing, 10)
                VStack(alignment: .leading){
                    Text("Lisinopril")
                        .font(.system(
                            size: 22,
                            weight: .bold,
                            design: .rounded))
                    Text("150mg, 1 capsule")
                        .font(.system(
                            size: 18,
                            design: .rounded))
                    Text("After breakfast")
                        .font(.system(
                            size: 16,
                            design: .rounded))
                }
                Spacer()
                Image(systemName: "list.dash")
            }
            Rectangle()
                .fill(Color.white)
                .frame(height: 2)
                .padding(.vertical)
            
            HStack{
                Spacer()
                Button(action: {}) {
                    HStack{
                        Image(systemName: "xmark")
                        Text("Skip")
                    }
                }
                Spacer()
                Button(action: {}) {
                    HStack{
                        Image(systemName: "checkmark")
                        Text("Done")
                    }
                }
                Spacer()
            }
        }
        .padding(30)
        .background(Color.indigo)
        .foregroundColor(Color.white)
        .cornerRadius(20)
        .padding(.bottom)
    }
}

struct Gebepentin: View {
    var body: some View {
        HStack(alignment: .center){
            Image("Drug2")
                .resizable()
                .frame(width: 60, height: 60)
                .padding(.trailing, 10)
            VStack(alignment: .leading){
                Text("Gabepentin")
                    .font(.system(
                        size: 22,
                        weight: .bold,
                        design: .rounded))
                Text("25mg, 2pillis")
                    .font(.system(
                        size: 18,
                        design: .rounded))
            }
            Spacer()
            Image(systemName: "list.dash")
        }
        .padding(30)
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct ButtomTabs: View {
    var body: some View {
        HStack{
            Button(action: {}) {
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            Spacer()
            Button(action: {}){
                Image(systemName: "smiley.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color.red)
            }
            Spacer()
            Button(action: {}) {
                Image(systemName: "calendar")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            Spacer()
            Button(action: {}) {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
        }
        .padding([.leading, .trailing], 10)
        .foregroundColor(Color.secondary)
    }
}

struct ActivityContent: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Today Activities")
                .font(.system(
                    size: 24,
                    weight: .bold,
                    design: .rounded))
            ScrollView(.vertical, showsIndicators: false){
                // Lisinopril
                Lisinopril()
                
                // Gobopentin
                Gebepentin()
            }
            // Buttom Tabs
            ButtomTabs()
        }
        .padding(30)
        .background(Color("Color2"))
        .cornerRadius(20)
        .edgesIgnoringSafeArea(.bottom)
    }
}
