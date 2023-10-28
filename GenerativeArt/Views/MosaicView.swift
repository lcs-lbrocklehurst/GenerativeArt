//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by Lewis Brocklehurst on 2023-10-24.
//

import SwiftUI

struct MosaicView: View {
    var body: some View {
        Grid(horizontalSpacing: 0, verticalSpacing: 0) {
            
            
            ForEach(1..<4) { j in
                
                GridRow {
                    //Repeats within a row (columns)
                    ForEach(1..<4) { i in
                       TileView()
                }
                        }
            }
            

        }
       
    }
}

#Preview {
    MosaicView()
}
