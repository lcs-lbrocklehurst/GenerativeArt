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
    
    var body: some View {
        
        ZStack {
            
            if flipOne == .heads {
                TriangleTopRight()
                    .stroke(.red)
                    .fill()
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomLeft()
                    .stroke(.red)
                    .fill()
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
