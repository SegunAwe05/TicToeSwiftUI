//
//  code.swift
//  Tic Tac Toe
//
//  Created by DIGE Inc. on 7/10/20.
//  Copyright © 2020 DIGE Inc. All rights reserved.
//

import Foundation

import SwiftUI

struct ContentView: View {
    // each block has its own number
    @State private var block = ["1","2","3","4","5","6","7","8","9"]
    @State private var backgrounds = Color.green
    
    @State private var playerOne = "apple"
    @State private var currentPlayer = "one"
    @State private var playerOneLbl = "Player One Turn"
    @State private var playerTwoLbl = "Player Two Turn"
    
    var body: some View {
        ZStack{
            // background
            Rectangle()
                .foregroundColor(Color(red: 0/255, green: 205/255, blue:175/255))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
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
                    Image(block[0])
                        .resizable()
                        .foregroundColor(Color.yellow)
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[0] = self.playerOne
                            print("block one tapped")
                            self.swithcPlayer()
                            
                    }
                    
                    
                    Image(block[1])
                        .resizable()
                        .foregroundColor(Color.yellow)
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[1] = self.playerOne
                            print("block two tapped")
                            self.swithcPlayer()
                    }
                    
                    Image(block[2])
                        .resizable()
                        .foregroundColor(Color.yellow)
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[2] = self.playerOne
                            print("block three tapped")
                            self.swithcPlayer()
                    }
                    Spacer()
                }
                //second row
                HStack  {
                    Spacer()
                    Image(block[3])
                        .resizable()
                        .foregroundColor(Color.yellow)
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[3] = self.playerOne
                            print("block four tapped")
                            self.swithcPlayer()
                    }
                    
                    Image(block[4])
                        .resizable()
                        .foregroundColor(Color.yellow)
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[4] = self.playerOne
                            print("block five tapped")
                            self.swithcPlayer()
                    }
                    
                    Image(block[5])
                        .resizable()
                        .foregroundColor(Color.yellow)
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[5] = self.playerOne
                            print("block six tapped")
                            self.swithcPlayer()
                    }
                    Spacer()
                }
                //third row
                HStack  {
                    Spacer()
                    Image(block[6])
                        .resizable()
                        .foregroundColor(Color.yellow)
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[6] = self.playerOne
                            print("block 7 tapped")
                            self.swithcPlayer()
                    }
                    
                    Image(block[7])
                        .resizable()
                        .foregroundColor(Color.yellow)
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[7] = self.playerOne
                            print("block eight tapped")
                            self.swithcPlayer()
                    }
                    
                    Image(block[8])
                        .resizable()
                        .foregroundColor(Color.yellow)
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[8] = self.playerOne
                            print("block nine tapped")
                            self.swithcPlayer()
                    }
                    Spacer()
                }
                
                Spacer()
                
                // player
                HStack{
                    
                    if currentPlayer == "one" {
                        VStack{
                            Text(playerOneLbl)
                                .foregroundColor(.black)
                                .padding(.all,10)
                                .background(Color.white.opacity(0.5))
                                .cornerRadius(20)
                            
                            Image("apple")
                                .resizable()
                                .frame(width: 32.0, height: 32.0)
                        }
                    } else {
                        /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                    }
                    
                    if currentPlayer == "two" {
                        VStack{
                            Text(playerTwoLbl)
                                .foregroundColor(.black)
                                .padding(.all,10)
                                .background(Color.white.opacity(0.5))
                                .cornerRadius(20)
                            
                            Image("cherry")
                                .resizable()
                                .frame(width: 32.0, height: 32.0)
                        }
                    } else {
                        /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                    }
                    
                }
                Spacer()
            }
        }
    }
    // swithcing players
    func swithcPlayer() {
        if self.currentPlayer == "one" {
            self.currentPlayer = "two"
            self.playerOne = "cherry"
            
        }
        else{
            self.currentPlayer = "one"
            self.playerOne = "apple"
        }
    }
    
    //win
    func showWin() {
        if self.block[0] == self.block[1] && self.block[1] == self.block[2] {
            
        }
    }
    
    // end of struct
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
