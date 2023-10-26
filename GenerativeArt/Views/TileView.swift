//
//  TileView.swift
//  GenerativeArt
//
//  Created by Lewis Brocklehurst on 2023-10-24.
//

import SwiftUI

enum Coin: Int {
    case heads = 1
    case tails = 2
    
    static func flip() -> Coin {
        let decision = Bool.random()
        
        if decision == true {
            return .heads
        } else {
            return .tails
        }
    }
}





struct TileView: View {
    

    // Determine the diagonal
    
    let flipOne = Coin.tails
    
    // Determine wether top or bottom triangle gets filled with color 1
    let flipTwo = Coin.tails
    
    
    // Choosing my markers
    let markerOne = Color.red
    let markerTwo = Color.blue
    
    // Decide on colors
    let flipForColor = Coin.tails
    
    // MARK: Computed properties
    
    // Set colors based on the coin flip
    var colorOne: Color {
        return flipForColor == .heads ? markerOne : markerTwo
        
    }
    var colorTwo: Color {
        return flipForColor == .heads ? markerTwo: markerOne
      
    }
    
    var body: some View {
        
        ZStack {
           
            if flipOne == .heads {
                TriangleTopRight()
                    .stroke(.red)
                    .fill(flipTwo == .heads ? colorOne : .clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomLeft()
                    .stroke(.red)
                    .fill(flipTwo == .tails ? colorOne : .clear)
                    .aspectRatio(1.0, contentMode: .fit)
                                
            } else {

                
                TriangleTopLeft()
                    .stroke(.red)
                    .fill(flipTwo == .heads ? colorOne : . clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomRIght()
                    .stroke(.red)
                    .fill(flipTwo == .tails ? colorOne : .clear)
                    .aspectRatio(1.0, contentMode: .fit)
            }
            
           
           
        }
        .padding()
    }
}


#Preview {
    TileView()
}
