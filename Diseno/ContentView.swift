//
//  ContentView.swift
//  Diseno
//
//  Created by Reales Rectoro Myles Clarence on 21/02/24.
//

import SwiftUI

// vstack vertical
// hstack horizontal
// zstack fondo

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, world! Myles")
                .font(.caption2)
            
            Text("Hola, Mundo! Myles")
                .font(.headline)
            
            Text("Hola, Mundo! Myles")
                .font(.largeTitle)

        }
        
    }
}

#Preview {
    ContentView()
}
