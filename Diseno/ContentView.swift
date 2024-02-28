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
    // Valores de entorno o enviromenteValues
    @Environment(\.horizontalSizeClass) var sizeClass
    
    
    var body: some View {
        if sizeClass == .regular{
            regularDesign()

        }else{
            compactDesign()

        }
    }
}

struct compactDesign: View {
    var body: some View{
        ZStack{
            Color.blue.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(){
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
                    Image(systemName: "person.crop.circle").font(.system(size: 100, weight: .bold)).foregroundColor(.green)
                }
                Text("Maria Ramirez")
                    .font(.largeTitle)         .foregroundColor(.white)
                    .bold()
                Text("Calle 123")
                    .foregroundColor(.white)
                    .font(.title).italic()
                
                HStack{
                    Button(action:{
                        
                    }){
                        Image(systemName: "message.fill")
                            .modifier(boton(color: .green))
                    }
                    Button(action:{
                        
                    }){
                        Image(systemName: "phone.fill")
                            .modifier(boton(color: .red))

                    }
                }
                
                
            }
        }
    }
}

struct boton: ViewModifier {
    var color : Color
    func body(content: Content) -> some View {
        content
            .padding()
            .background(color)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        
    }
}

struct regularDesign: View {
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack(){
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
                    Image("car")
                          .resizable()
                      .frame(width: 130, height: 100, alignment: .center)
                      .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                
                VStack(alignment: .trailing, spacing: 10){
                    Text("Maria Ramirez")
                           .font(.largeTitle)         .foregroundColor(.white)
                           .bold()
                    Text("Calle 123")
                           .foregroundColor(.white)
                         .font(.title).italic()
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
