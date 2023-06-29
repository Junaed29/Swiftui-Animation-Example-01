//
//  ContentView.swift
//  Swiftui Animation Example 1
//
//  Created by Junaed Muhammad Chowdhury on 28/6/23.
//

import SwiftUI

struct ExampleOne: View {
    
    //Animation Rule 1
    @State private var isJunaed = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors:  [.blue, .black], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            HStack {
                Text(isJunaed ? "This is Junaed Selected" :"This is Not Junaed")
                    .bold()
                    .opacity(isJunaed ? 1 : 0.5)
                
                Spacer()
                
                Image(systemName: isJunaed ? "checkmark.circle.fill" : "circle")
                    .font(.system(size: 24))
                    .foregroundColor(isJunaed ? .green : .gray)
                    .padding()
                    .onTapGesture {
                        //Animation Rule 2
                        withAnimation(.easeInOut(duration: 1.2)) {
                            isJunaed.toggle()
                        }
                    }
            }
            .padding()
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: isJunaed ? 5 : 24))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleOne()
    }
}

//Animation Rule 1
// -------------
//Create A @State var bollean

//Animation Rule 2
// -------------
//Use .withAnimation{} to toggle that bolean

//Animation Rule 3
// -------------
//Use TERNARY Operator to Control Animation
