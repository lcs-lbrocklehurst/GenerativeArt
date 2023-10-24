//
//  TileView.swift
//  GenerativeArt
//
//  Created by Lewis Brocklehurst on 2023-10-24.
//

import SwiftUI

struct TriangleTopRight: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        // Make an empty path
        var path = Path()
        
        // Define Path
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) // 1
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY)) // 2
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) // 3
        
        // Return the path
        return path

    }
}

struct TileView: View {
    var body: some View {
        
        VStack {
            //Top righ Triangle
           TriangleTopRight()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .padding()
    }
    }


#Preview {
    TileView()
}
