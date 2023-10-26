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
    
    let flipOne = Coin.flip()
    
    // Choosing my markers
    let markerOne = Color.red
    let markerTwo = Color.blue
    
    // Decide on colors
    let flipForColor = Coin.heads
    
    // MARK: Computed properties
    
    // Set colors based on the coin flip
    var colorOne: Color {
        if flipForColor == .heads {
            return markerOne
        } else {
            return markerTwo
        }
    }
    var colorTwo: Color {
        if flipForColor == .heads {
            return markerTwo
        }else {
            return markerOne
        }
    }
    
    var body: some View {
        
        ZStack {
           
            if flipOne == .heads {
                TriangleTopRight()
                    .stroke(.red)
                    .fill(colorOne)
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomLeft()
                    .stroke(.red)
                    .fill(colorTwo)
                    .aspectRatio(1.0, contentMode: .fit)
                                
            } else {

                
                TriangleTopLeft()
                    .stroke(.red)
                    .fill()
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomRIght()
                    .stroke(.red)
                    .fill()
                    .aspectRatio(1.0, contentMode: .fit)
            }
            
           
           
        }
        .padding()
    }
}


#Preview {
    TileView()
}
