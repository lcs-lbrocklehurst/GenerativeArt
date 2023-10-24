//
//  TileView.swift
//  GenerativeArt
//
//  Created by Lewis Brocklehurst on 2023-10-24.
//

import SwiftUI

struct TriangleBottomLeft: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        // Make an empty path
        var path = Path()
        
        // Define Path
        path.move(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        // Return Path
        return path
        
    }
}

struct TriangleTopLeft: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
            //Define Path
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        
        // Return Path
        return path
    }
}

struct TriangleBottomRIght: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        // Make an empty path
        var path = Path()
        
        // Define Path
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        // Return the Path
        return path
    }
}

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
                .stroke(.red)
                .fill()
            // Make the triangle fit the View modifier
                .aspectRatio(1.0, contentMode: .fit)
            
            // Bottom right triangle
            
            TriangleBottomRIght()
                .stroke(.red)
                .fill()
            
            //Make the Triangle Fit the View Modifier
                .aspectRatio(1.0, contentMode: .fit)
            
            TriangleBottomLeft()
                .stroke(.red)
                .fill()
           // Make the triangle fit the View modifier
                .aspectRatio(1.0, contentMode: .fit)
            
            // Top Left Triangle
            TriangleTopLeft()
                .stroke(.red)
                .fill()
                .aspectRatio(1.0, contentMode: .fit)
            //Bottom right Triangle
        }
        .padding()
    }
    }


#Preview {
    TileView()
}
