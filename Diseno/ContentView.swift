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
        ZStack{
            Color.blue.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack(){
                Image("car")
                    .resizable()
                    .frame(width: 130, height: 100, alignment: .center)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Maria Ramirez").font(.largeTitle).foregroundColor(.white)
                        .bold()
                    Text("Calle 123")
                        .foregroundColor(.white).font(.title).italic()
                    
                }
            }
        }

        
    }
}

#Preview {
    ContentView()
}
