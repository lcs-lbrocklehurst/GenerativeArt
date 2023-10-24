//
//  ContentView.swift
//  GenerativeArt
//
//  Created by Lewis Brocklehurst on 2023-10-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
