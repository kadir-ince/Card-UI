//
//  ContentView.swift
//  CardView
//
//  Created by Kadir on 4.08.2020.
//  Copyright © 2020 Kadir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        ZStack {
            TitleView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
            BackCardView()
                .background(show ? Color("card3") : Color("card4"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -400 : -40)
                .scaleEffect(0.9)
                .rotationEffect(.degrees(show ? 0 : 10))
                .rotation3DEffect(Angle(degrees: 10), axis: (x: 10.0, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.5))

            BackCardView()
                .background(show ? Color("card4") : Color("card3"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -200 : -20)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(show ? 0 : 5))
                .rotation3DEffect(Angle(degrees: 5), axis: (x: 10.0, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeOut(duration: 0.3))
            CardView()
                .blendMode(.hardLight)
                .onTapGesture {
                    self.show.toggle()
                }
            BottomCardView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
        }
    }
} 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hello, World!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Text("Placeholder")
                        .foregroundColor(Color("accent"))
                }
                Spacer()

                Image("Logo1")
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            Spacer()
            Image("Card1").resizable().aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 110, alignment: .top)
        }
        .frame(width: 340.0, height: 220.0)
        .background(Color.black)
        .cornerRadius(20.0)
        .shadow(radius: 20)
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 340, height: 220)
    }
}

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Certificates")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()

            Image("Background1")
            Spacer()
        }
    }
}

struct BottomCardView: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 40, height: 5)
                .cornerRadius(3)
                .opacity(0.1)

            Text("This certificate is proof that Meng To has achieved the UI Design course with approval from a Design+Code instructor.")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4)
            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        .offset(x: 0, y: 500)
    }
}
