//
//  ContentView.swift
//  dicee-SwiftUI-iOS13-Udemy
//
//  Created by Jeff Deng on 12/30/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftNumber = 1
    @State var rightNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    diceView(n: leftNumber)
                    diceView(n: rightNumber)
                }
                .padding(.horizontal)
             
                Spacer()
                Button(action: {
                    leftNumber = Int.random(in: 1...6)
                    rightNumber = Int.random(in: 1...6)
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                })
                .background(Rectangle().fill(Color.red))
            }
        }
    }
}

struct diceView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


