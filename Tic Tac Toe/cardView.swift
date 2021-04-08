//
//  cardView.swift
//  Tic Tac Toe
//
//  Created by DIGE Inc. on 7/10/20.
//  Copyright © 2020 DIGE Inc. All rights reserved.
//

import SwiftUI

struct cardView: View {
    
     @Binding var block:String
     @Binding var background:Color
    
    var body: some View {
        Image(block)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .background(background.opacity(0.7))
            .cornerRadius(20)
            
    }
}

struct cardView_Previews: PreviewProvider {
    static var previews: some View {
    cardView(block: Binding.constant(""), background: Binding.constant(Color.green))

    }
}
