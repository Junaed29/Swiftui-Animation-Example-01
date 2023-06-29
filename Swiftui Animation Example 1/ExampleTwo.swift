//
//  ExampleTwo.swift
//  Swiftui Animation Example 1
//
//  Created by Junaed Muhammad Chowdhury on 29/6/23.
//

import SwiftUI


// Shape with Spring
struct ExampleTwo: View {
    
    //Animation Rule 1
    @State private var animatingCircle = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors:  [.blue, .black], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.linearGradient(colors: [.cyan, .green], startPoint: .topTrailing, endPoint: .bottomLeading))
                    .offset(x: animatingCircle ? 30 : 0, y: animatingCircle ? -100 : 0)
                    .scaleEffect( animatingCircle ? 2.0 : 1.0)
                    .onTapGesture {
                        //Animation Rule 2
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.3, blendDuration: 0)) {
                            animatingCircle.toggle()
                        }
                    }
            }
        }
    }
}

struct ExampleTwo_Previews: PreviewProvider {
    static var previews: some View {
        ExampleTwo()
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
