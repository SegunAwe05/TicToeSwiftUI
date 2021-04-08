//
//  ContentView.swift
//  Tic Tac Toe
//
//  Created by DIGE Inc. on 7/8/20.
//  Copyright © 2020 DIGE Inc. All rights reserved.
//



import SwiftUI

struct ContentView: View {
    // each block has its own number
    @State private var block = ["1","2","3","4","5","6","7","8","9"]
    @State private var backgrounds = Array(repeating: Color.white.opacity(0.7), count: 9)
    
    @State private var playerOne = ["apple","cherry"]
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
                        .aspectRatio(1, contentMode: .fit)
                        .background(backgrounds[0])
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[0] = self.playerOne[0]
                            print("block one tapped")
                            self.swithcPlayer()
                    }
                    
                    
                    Image(block[1])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(backgrounds[1])
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[1] = self.playerOne[0]
                            print("block two tapped")
                            self.swithcPlayer()
                    }
                    
                    Image(block[2])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(backgrounds[2])
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[2] = self.playerOne[0]
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
                        .aspectRatio(1, contentMode: .fit)
                        .background(backgrounds[3])
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[3] = self.playerOne[0]
                            print("block four tapped")
                            self.swithcPlayer()
                    }
                    
                    Image(block[4])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(backgrounds[4])
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[4] = self.playerOne[0]
                            print("block five tapped")
                            self.swithcPlayer()
                    }
                    
                    Image(block[5])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(backgrounds[5])
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[5] = self.playerOne[0]
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
                        .aspectRatio(1, contentMode: .fit)
                        .background(backgrounds[6])
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[6] = self.playerOne[0]
                            print("block 7 tapped")
                            self.swithcPlayer()
                    }
                    
                    Image(block[7])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(backgrounds[7])
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[7] = self.playerOne[0]
                            print("block eight tapped")
                            self.swithcPlayer()
                    }
                    
                    Image(block[8])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(backgrounds[8])
                        .cornerRadius(20)
                        .onTapGesture  {
                            self.block[8] = self.playerOne[0]
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
                            
                            //hiding image after win
                            if playerOneLbl  == "You win" || playerTwoLbl == "You win" {
                                
                                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                            } else {
                                
                                Image("apple")
                                    .resizable()
                                    .frame(width: 32.0, height: 32.0)
                            }
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
                            //hiding image after win
                            if playerOneLbl  == "You win" || playerTwoLbl == "You win" {
                                
                                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                            } else {
                                
                                Image("cherry")
                                    .resizable()
                                    .frame(width: 32.0, height: 32.0)
                            }
                        }
                    } else {
                        /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                    }
                }.scaleEffect(1.5)
                Spacer()
                HStack {
                    //play again button
                    if playerOneLbl  == "You win" || playerTwoLbl == "You win" {
                        Button(action: {
                            self.resetBoard()
                        }) {
                            Text("Play Again")
                                .foregroundColor(.black)
                                .padding(3.0)
                                .padding([.leading, .trailing], 40)
                                .background(Color.white.opacity(0.5))
                                .cornerRadius(10)
                        }
                    } else {
                        /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                    }
                }.scaleEffect(1.5)
                Spacer()
                
            }
        }
    }
    // swithcing players
    func swithcPlayer() {
        if self.currentPlayer == "one" {
            self.currentPlayer = "two"
            self.playerOne[0] = "cherry"
            
        }
        else{
            self.currentPlayer = "one"
            self.playerOne[0] = "apple"
        }
        self.showWin()
    }
    
    
    //win
    func showWin() {
        if self.block[0] == self.block[1] && self.block[1] == self.block[2] {
            self.backgrounds[0] = Color.green
            self.backgrounds[1] = Color.green
            self.backgrounds[2] = Color.green
            self.playerOneLbl = "You win"
            self.playerTwoLbl = "You win"
        }
        
        if self.block[3] == self.block[4] && self.block[4] == self.block[5] {
            self.backgrounds[3] = Color.green
            self.backgrounds[4] = Color.green
            self.backgrounds[5] = Color.green
            self.playerOneLbl = "You win"
            self.playerTwoLbl = "You win"
        }
        
        if self.block[6] == self.block[7] && self.block[7] == self.block[8] {
            self.backgrounds[6] = Color.green
            self.backgrounds[7] = Color.green
            self.backgrounds[8] = Color.green
            self.playerOneLbl = "You win"
            self.playerTwoLbl = "You win"
        }
        
        if self.block[0] == self.block[3] && self.block[3] == self.block[6] {
            self.backgrounds[0] = Color.green
            self.backgrounds[3] = Color.green
            self.backgrounds[6] = Color.green
            self.playerOneLbl = "You win"
            self.playerTwoLbl = "You win"
        }
        
        if self.block[1] == self.block[4] && self.block[4] == self.block[7] {
            self.backgrounds[1] = Color.green
            self.backgrounds[4] = Color.green
            self.backgrounds[7] = Color.green
            self.playerOneLbl = "You win"
            self.playerTwoLbl = "You win"
        }
        
        if self.block[2] == self.block[5] && self.block[5] == self.block[8] {
            self.backgrounds[2] = Color.green
            self.backgrounds[5] = Color.green
            self.backgrounds[8] = Color.green
            self.playerOneLbl = "You win"
            self.playerTwoLbl = "You win"
        }
        
        if self.block[0] == self.block[4] && self.block[4] == self.block[8] {
            self.backgrounds[0] = Color.green
            self.backgrounds[4] = Color.green
            self.backgrounds[8] = Color.green
            self.playerOneLbl = "You win"
            self.playerTwoLbl = "You win"
        }
        
        if self.block[2] == self.block[4] && self.block[4] == self.block[6] {
            self.backgrounds[2] = Color.green
            self.backgrounds[4] = Color.green
            self.backgrounds[6] = Color.green
            self.playerOneLbl = "You win"
            self.playerTwoLbl = "You win"
        }
        
    }
    
    func resetBoard() {
        self.currentPlayer = "one"
        self.playerOneLbl = "Player One Turn"
        self.playerTwoLbl = "Player Two Turn"
        self.block = ["1","2","3","4","5","6","7","8","9"]
        self.backgrounds = Array(repeating: Color.white.opacity(0.7), count: 9)
        self.swithcPlayer()
    }
    // end of struct
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
