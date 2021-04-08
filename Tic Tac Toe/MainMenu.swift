//
//  MainMenu.swift
//  Tic Tac Toe
//
//  Created by DIGE Inc. on 7/12/20.
//  Copyright © 2020 DIGE Inc. All rights reserved.
//

import SwiftUI

struct MainMenu: View {
    @State private var isPresent = false
    var body: some View {
        NavigationView {
            ZStack{
                Rectangle()
                    .foregroundColor(Color(red: 0/255, green: 205/255, blue:175/255))
                    .edgesIgnoringSafeArea(.all)
                VStack{
                   
                    HStack {
                        // title
                        Image("apple")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                        
                        Text("Fruit Tac Toe")
                            .foregroundColor(.black)
                            .padding(3.0)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(15)
                        
                        Image("cherry")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                        
                    }.scaleEffect(2)
                    Spacer()
                    
                    // first row
                    HStack  {
                        Spacer()
                        Image("apple")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(20)
                        
                        Spacer()
                        Image("cherry")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(20)
                        Spacer()
                        Image("apple")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(20)
                    }
                    //seocnd row
                    HStack {
                        Spacer()
                        Image("cherry")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(20)
                        
                        Spacer()
                        Image("apple")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(20)
                        
                        Spacer()
                        Image("cherry")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(20)
                    }
                    //third row
                    HStack{
                        Spacer()
                        Image("apple")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(20)
                        Spacer()
                        Image("cherry")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(20)
                        Spacer()
                        Image("apple")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(20)
                    }
                    Spacer()
                    HStack{
                        NavigationLink(destination: ContentView()) {
                            Text("Play")
                            .foregroundColor(.black)
                            .padding(3.0)
                            .padding([.leading, .trailing], 40)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(10)
                        }
                    }.scaleEffect(2)
                    Spacer()
                }
            }
        }
        
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}

